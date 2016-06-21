/*
 * ForceInfusionTask.h
 *
 *  Created on: Aug 18, 2011
 *      Author: swgemu
 */

#ifndef FORCEINFUSIONTASK_H_
#define FORCEINFUSIONTASK_H_


#include "server/zone/objects/creature/CreatureObject.h"

class ForceInfusionTask : public Task {
 ManagedReference<CreatureObject*> creature;
 ManagedReference<CreatureObject*> creatureTarget;
 int counter;
 int amountOfTicks = 5;
public:

 ForceInfusionTask(CreatureObject creo, CreatureObject creoTarget) {
  creature = creo;  // This is the Attacker
  creatureTarget = creoTarget; // This is the target (one that takes damage)
  counter = 0;
 }

 void run() {
  Locker lockerC(creature);
  Locker lockerCT(creatureTarget,creature);
  if(creature != NULL && creatureTarget != NULL) {
   if (counter < amountOfTicks && !creatureTarget->isDead()) {
    float heal = 500;
  
    float healHealth = heal;
    float healAction = heal;
    float healMind = heal;
    creatureTarget->healDamage(creature, CreatureAttribute::HEALTH, healHealth, true);
    creatureTarget->healDamage(creature, CreatureAttribute::ACTION, healAction, true);
    creatureTarget->healDamage(creature, CreatureAttribute::MIND, healMind, true);

    creatureTarget->playEffect("clienteffect/pl_force_heal_self.cef", "");

    counter++;
    this->reschedule(6000); // Reschedule in 6 seconds...
   }
   else {

    creatureTarget->removePendingTask("forceInfusionTask");
   }
  }
 }
};


#endif / FORCEINFUSIONTASK_H_ /