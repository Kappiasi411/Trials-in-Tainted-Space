﻿package classes.Items.Miscellaneous
{
	import classes.ItemSlotClass;
	import classes.GLOBAL;
	import classes.Creature;
	import classes.kGAMECLASS;	
	import classes.Characters.PlayerCharacter;
	import classes.GameData.TooltipManager;
	import classes.StringUtil;
	
	public class ZilHoney extends ItemSlotClass
	{
		
		//constructor
		public function ZilHoney()
		{
			this._latestVersion = 1;
			
			this.quantity = 1;
			this.stackSize = 10;
			this.type = GLOBAL.FOOD;
			
			//Used on inventory buttons
			this.shortName = "ZilHoney";
			
			//Regular name
			this.longName = "vial of female zil honey";
			
			TooltipManager.addFullName(this.shortName, StringUtil.toTitleCase(this.longName));
			
			//Longass shit, not sure what used for yet.
			this.description = "a vial of female zil honey";
			
			//Displayed on tooltips during mouseovers
			this.tooltip = "This vial is filled with the honey created by a female zil's orgasm. It smells ludicrously sweet and delicious. A cursory examination indicates that shouldn't cause any kinds of mutation.";
			
			TooltipManager.addTooltip(this.shortName, this.tooltip);
			
			this.attackVerb = "";
			
			//Information
			this.basePrice = 0;
			this.attack = 0;
			this.damage = 0;
			this.damageType = GLOBAL.KINETIC;
			this.defense = 0;
			this.shieldDefense = 0;
			this.shields = 0;
			this.sexiness = 0;
			this.critBonus = 0;
			this.evasion = 0;
			this.fortification = 0;
			this.bonusResistances = new Array(0, 0, 0, 0, 0, 0, 0, 0);
			
			this.version = _latestVersion;
		}
		
		//METHOD ACTING!
		override public function useFunction(target:Creature, usingCreature:Creature = null):Boolean
		{
			kGAMECLASS.clearOutput();
			if(target is PlayerCharacter) {
				//Consume:
				kGAMECLASS.output("You knock back the gooey, sweet-tasting stuff with ease, finding it more than palatable to your tongue. It tingles pleasantly on your taste buds as it invigorates you.");
				target.energy(35);
				kGAMECLASS.output(" You even feel like you could longer before needing to sleep. Is there caffeine in this stuff?");
			}
			else {
				kGAMECLASS.output(target.capitalA + target.short + " drinks the honey, getting a quick energy boost.");
				target.energy(35);
			}
			return false;
		}
	}
}
