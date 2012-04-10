unitDef = {
  unitname            = [[armcybr]],
  name                = [[Licho]],
  description         = [[Singularity Bomber]],
  amphibious          = true,
  --autoheal			  = 25,
  buildCostEnergy     = 2000,
  buildCostMetal      = 2000,
  builder             = false,
  buildPic            = [[ARMCYBR.png]],
  buildTime           = 2000,
  canAttack           = true,
  canFly              = true,
  canGuard            = true,
  canLoopbackAttack   = false,
  canMove             = true,
  canPatrol           = true,
  canstop             = [[1]],
  canSubmerge         = false,
  category            = [[FIXEDWING]],
  collide             = false,
  collisionVolumeOffsets = [[0 0 5]],
  collisionVolumeScales  = [[60 20 50]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[ellipsoid]],
  corpse              = [[DEAD]],
  cruiseAlt           = 250,

  customParams        = {
	helptext		= [[The Licho drops a single powerful bomb that can send units flying. It is sturdy enough to penetrate moderate AA and escape to repair, but should not be used recklessly - it's too expensive for that.]],
    description_bp = [[Bombardeiro de implos?o]],
    description_fr = [[Bombardier r Implosion]],
	description_de = [[Implosion Bomber]],
    helptext_bp    = [[]],
    helptext_fr    = [[Le Licho est tout simplement la mort venue du ciel. Ce bombardier lourdement blindé et relativement lent transporte une tete nucléaire tactique r implosion. Capable de faire des ravages dans les lignes ennemies, ou de détruire des structures lourdement blindées. Tout simplement mortel utilisé en petites escadres.]],
	helptext_de    = [[Licho ist ein mächtiger Bomber, der alles in Schutt und Asche legt. Seine Schlagkraft und Ausdauer ist riesig, doch muss er nach jedem Angriff Munition nachladen, was ihn eher für Angriffe auf einzelne Ziele prädestiniert.]],
  },

  explodeAs           = [[GUNSHIPEX]],
  floater             = true,
  footprintX          = 3,
  footprintZ          = 3,
  iconType            = [[bombernuke]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  maneuverleashlength = [[1280]],
  mass                = 460,
  maxAcc              = 0.75,
  maxDamage           = 2600,
  maxFuel             = 1000000,
  maxVelocity         = 9,
  minCloakDistance    = 75,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP SUB]],
  objectName          = [[ARMCYBR]],
  --refuelTime		  = 16,
  script			  = [[armcybr.lua]],
  seismicSignature    = 0,
  selfDestructAs      = [[GUNSHIPEX]],
  side                = [[ARM]],
  sightDistance       = 660,
  smoothAnim          = true,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[ARM_PIDR]],
	  badTargetCategory	 = [[GUNSHIP FIXEDWING]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER GUNSHIP FIXEDWING]],
    },

  },


  weaponDefs          = {

    ARM_PIDR = {
      name                    = [[Implosion Bomb]],
      areaOfEffect            = 256,
      avoidFeature            = false,
      avoidFriendly           = false,
	  burnblow                = true,
      collideFriendly         = false,
      commandfire             = true,
      craterBoost             = 1,
      craterMult              = 2,

      damage                  = {
        default = 2500,
        planes  = 2500,
        subs    = 125,
      },

      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[custom:NUKE_150]],
      fireStarter             = 100,
      flightTime              = 4,
      impulseBoost            = 0,
      impulseFactor           = -0.8,
      interceptedByShieldType = 2,
      model                   = [[wep_m_deathblow.s3o]],
      pitchtolerance          = [[16000]],
      range                   = 500,
      reloadtime              = 8,
      renderType              = 1,
      shakeduration           = [[2]],
      shakemagnitude          = [[18]],
      smokedelay              = [[0.2]],
      smokeTrail              = true,
      soundHit                = [[weapon/missile/liche_hit]],
      soundStart              = [[weapon/missile/liche_fire]],
      startsmoke              = [[1]],
      startVelocity           = 300,
      targetable              = 1,
      tolerance               = 16000,
      tracks                  = true,
      turnRate                = 16000,
      weaponAcceleration      = 100,
      weaponTimer             = 6,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 600,
    },

  },


  featureDefs         = {

    DEAD  = {
      description      = [[Wreckage - Licho]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 2800,
      energy           = 0,
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 1000,
      object           = [[wreck3x3c.s3o]],
      reclaimable      = true,
      reclaimTime      = 1000,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

    HEAP  = {
      description      = [[Debris - Licho]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 2800,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 500,
      object           = [[debris3x3b.s3o]],
      reclaimable      = true,
      reclaimTime      = 500,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ armcybr = unitDef })
