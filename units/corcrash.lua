unitDef = {
  unitname               = [[corcrash]],
  name                   = [[Vandal]],
  description            = [[Anti-air Bot]],
  acceleration           = 0.45,
  bmcode                 = [[1]],
  brakeRate              = 0.45,
  buildCostEnergy        = 100,
  buildCostMetal         = 100,
  builder                = false,
  buildPic               = [[CORCRASH.png]],
  buildTime              = 100,
  canAttack              = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canstop                = true,
  category               = [[LAND]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[30 41 30]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[cylY]],
  corpse                 = [[DEAD]],

  customParams           = {
    description_bp = [[Robô anti-aéreo]],
    description_es = [[Robot Antiaéreo]],
    description_fr = [[Robot Anti-Air]],
    description_it = [[Robot da contraerea]],
	description_de = [[Flugabwehr Roboter]],
    helptext       = [[The Vandal is a cheap, hardy and reliable dedicated anti-air bot. Defenseless vs. land forces.]],
    helptext_bp    = [[O Vandal é um robô anti-ar barato. Dá aos robôs uma vantagem definitiva contra aeronaves. N?o pode ser defender de unidades terrestres.]],
    helptext_es    = [[El Vandal es un robot antiaéreo barato. Ofrece una ventaja definitiva para los kbots contra aviones. No tiene defensas contra unidades de tierra.]],
    helptext_fr    = [[Le Vandal est l'unit? anti-air de base, il tire des missiles guid?s ? une cadence peu rapide. Redoutable en groupe, il sert ? prot?ger bases et troupes.]],
    helptext_it    = [[Il Vandal é un economico robot da contraerea. Offre ai kbot un vantaggio decisivo contro aerei. Non ha difese contro forze terrestre.]],
	helptext_de    = [[Der Vandal ist ein billiger, dedizierter Flugabwehr Roboter, der den Robotern einen bestimmten Vorteil gegenüber Flugzeugen bringt. Schutzlos gegenüber Landstreitkräften.]],
  },

  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 2,
  footprintZ             = 2,
  iconType               = [[walkeraa]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  leaveTracks            = true,
  mass                   = 123,
  maxDamage              = 650,
  maxSlope               = 36,
  maxVelocity            = 2.7,
  maxWaterDepth          = 22,
  minCloakDistance       = 75,
  movementClass          = [[KBOT2]],
  moveState              = 0,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM LAND SINK SHIP SATELLITE SWIM FLOAT SUB HOVER]],
  objectName             = [[crasher.s3o]],
  script                 = [[corcrash.lua]],
  seismicSignature       = 4,
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:CRASHMUZZLE]],
    },

  },

  side                   = [[CORE]],
  sightDistance          = 660,
  smoothAnim             = true,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[ComTrack]],
  trackWidth             = 22,
  turnRate               = 2200,
  upright                = true,

  weapons                = {

    {
      def                = [[ARMKBOT_MISSILE]],
      --badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[GUNSHIP FIXEDWING]],
    },

  },


  weaponDefs             = {

    ARMKBOT_MISSILE = {
      name                    = [[Homing Missiles]],
      areaOfEffect            = 48,
      canattackground         = false,
      cegTag                  = [[missiletrailblue]],
      craterBoost             = 1,
      craterMult              = 2,
      cylinderTargetting      = 1,

      damage                  = {
        default = 7,
        planes  = 70,
        subs    = 3.5,
      },

      explosionGenerator      = [[custom:FLASH2]],
      fireStarter             = 70,
      flightTime              = 3,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      lineOfSight             = true,
      model                   = [[wep_m_fury.s3o]],
      noSelfDamage            = true,
      range                   = 850,
      reloadtime              = 2,
      smokedelay              = [[0.1]],
      smokeTrail              = true,
      soundHit                = [[weapon/missile/rocket_hit]],
      soundStart              = [[weapon/missile/missile_fire7]],
      startsmoke              = [[1]],
      startVelocity           = 650,
      texture2                = [[AAsmoketrail]],
      tolerance               = 9000,
      tracks                  = true,
      turnRate                = 63000,
      turret                  = true,
      weaponAcceleration      = 141,
      weaponTimer             = 5,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 850,
    },

  },


  featureDefs            = {

    DEAD = {
      description      = [[Wreckage - Vandal]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 650,
      energy           = 0,
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[20]],
      hitdensity       = [[100]],
      metal            = 40,
      object           = [[crasher_dead.s3o]],
      reclaimable      = true,
      reclaimTime      = 40,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    HEAP = {
      description      = [[Debris - Vandal]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 650,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 20,
      object           = [[debris2x2a.s3o]],
      reclaimable      = true,
      reclaimTime      = 20,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ corcrash = unitDef })
