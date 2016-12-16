unitDef = {
  unitname               = [[fighterdrone]],
  name                   = [[Spicula]],
  description            = [[Fighter Drone]],
  brakerate              = 0.4,
  buildCostEnergy        = 100,
  buildCostMetal         = 100,
  buildPic               = [[fighterdrone.png]],
  buildTime              = 100,
  canAttack              = true,
  canFly                 = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canstop                = [[1]],
  canSubmerge            = false,
  category               = [[FIXEDWING]],
  collide                = false,
  collisionVolumeOffsets = [[0 0 5]],
  collisionVolumeScales  = [[25 8 40]],
  collisionVolumeType    = [[box]],
  crashDrag              = 0.02,
  cruiseAlt              = 250,
  canLand                = false,

  customParams           = {
    description_fr = [[Drone Chasseur]],
    description_de = [[Kappenjaegerdrohne]],
    helptext       = [[The Spicula is a fast multirole fighter drone whose particle beam is effective against both land and air targets.]],
    --helptext_fr    = [[Capable de tirer en l'air ou au sol le Spicula n'est efficace qu'en groupe. Sa puissance de feu limité le rends moins éfficace qu'un aeronef dédié au combat Air/Sol ou au Air/Air.]],
    helptext_de    = [[Der Spicula ist eine schnelle Kappenjaegerdrohne, der kann Luft- und Landeinheiten schiessen.]],
    modelradius    = [[5]],
    refuelturnradius = [[80]],
    is_drone = 1,
  },

  explodeAs              = [[GUNSHIPEX]],
  fireState              = 2,
  floater                = true,
  footprintX             = 2,
  footprintZ             = 2,
  frontToSpeed           = 0,
  iconType               = [[fighter]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  maneuverleashlength    = [[400]],
  maxAcc                 = 0.7,
  maxDamage              = 360,
  maxVelocity            = 8,
  maxElevator            = 0.02,
  maxRudder              = 0.006,
  --maxPitch               = 0.1,
  minCloakDistance       = 75,
  mygravity              = 1,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM SUB]],
  objectName             = [[fighterdrone.dae]],
  script                 = [[fighterdrone.lua]],
  seismicSignature       = 0,
  selfDestructAs         = [[GUNSHIPEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:MUZZLE_ORANGE]],
      [[custom:FF_PUFF]],
      [[custom:BEAMWEAPON_MUZZLE_RED]],
      [[custom:FLAMER]],
    },

  },
  sightDistance          = 520,
  speedToFront           = 0,
  turnRate               = 9001,
  turnRadius             = 90,

  weapons                = {

    {
      def                = [[LASER]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 90,
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },
  },

  weaponDefs          = {

    LASER      = {
      name                    = [[Rapid-Fire Particle Beam]],
      beamDecay               = 0.8,
      beamTime                = 1/30,
      beamttl                 = 6,
      coreThickness           = 0.2,
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting      = 1,

      damage                  = {
        default = 33,
        subs    = 2.2,
      },

      explosionGenerator      = [[custom:BEAMWEAPON_HIT_RED]],
      fireStarter             = 100,
      impactOnly              = true,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      laserFlareSize          = 3.25,
      minIntensity            = 1,
      range                   = 500,
      reloadtime              = 0.2,
      rgbColor                = [[1 0 0]],
      soundStart              = [[weapon/laser/mini_laser]],
      soundStartVolume        = 4,
      thickness               = 2,
      tolerance               = 8192,
      turret                  = true,
      weaponType              = [[BeamLaser]],
    },
  },
}

return lowerkeys({ fighterdrone = unitDef })
