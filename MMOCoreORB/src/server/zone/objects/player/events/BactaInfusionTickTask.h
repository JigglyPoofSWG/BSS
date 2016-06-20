/*
 * ChannelForceRegenTask.h
 *
 *  Created on: Aug 18, 2011
 *      Author: swgemu
 */

#ifndef BACTAINFUSIONTICKTASK_H_
#define BACTAINFUSIONTICKTASK_H_


#include "server/zone/objects/creature/CreatureObject.h"

class BactaInfusionTickTask : public Task {
	ManagedReference<CreatureObject*> creature;
	ManagedReference<CreatureObject*> creatureTarget;
	int counter;
	//int amountOfTicks;
public:

	BactaInfusionTickTask(CreatureObject* creo, CreatureObject* creoTarget) {
		creature = creo;  // This is the Attacker
		creatureTarget = creoTarget; // This is the target (one that takes damage)
		counter = 0;
		//amountOfTicks = 5;
	}
	
	void run() {
		int amountOfTicks = 5;
		Locker lockerC(creature);
		Locker lockerCT(creatureTarget,creature);
		if(creature != NULL && creatureTarget != NULL) {
			if (counter < amountOfTicks && !creatureTarget->isIncapacitated() && !creatureTarget->isDead()) {
				int health = 500;
				creatureTarget->healDamage(creature, CreatureAttribute::HEALTH, health, true);
				creatureTarget->healDamage(creature, CreatureAttribute::ACTION, health, true);
				creatureTarget->healDamage(creature, CreatureAttribute::MIND, health, true);
				creatureTarget->playEffect("clienteffect/pl_force_heal_self.cef", "");
				counter++;
				this->reschedule(8000); // Reschedule in 8 seconds...
			}
			else {

				creatureTarget->removePendingTask("BactaInfusionTickTask");
			}
		}
	}
};

#endif /* CHANNELFORCEREGENTASK_H_ */
