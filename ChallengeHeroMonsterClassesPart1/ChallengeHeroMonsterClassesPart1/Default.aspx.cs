using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengeHeroMonsterClassesPart1
{

    public partial class Default : System.Web.UI.Page
    {
        //Stats


        protected void Page_Load(object sender, EventArgs e)
        {

            //Characters
            Character hero = new Character();
            

            hero.Name = "Hero";
            hero.Health = 100;
            hero.DamageMaximum = 20;
            hero.AttackBonus = false;

            Character monster = new Character();

            monster.Name = "Monster";
            monster.Health = 100;
            monster.DamageMaximum = 20;
            monster.AttackBonus = true;
            
            Dice dice = new Dice();

            if (hero.AttackBonus)
                monster.Defend(hero.Attack(dice));

            if (monster.AttackBonus)
                hero.Defend(monster.Attack(dice));

            while (hero.Health > 0 && monster.Health > 0)
            {
                monster.Defend(hero.Attack(dice));
                hero.Defend(monster.Attack(dice));

                printStats(hero);
                printStats(monster);
            }

            int damage = hero.Attack(dice);
            monster.Defend(damage);

            damage = monster.Attack(dice);
            hero.Defend(damage);

            displayResult(hero, monster);

            
            
        }

        private void displayResult(Character opponent1, Character opponent2)
        {
            if (opponent1.Health <= 0 && opponent2.Health <= 0)
                resultLabel.Text += String.Format("<p>Both {0} and {1} died.</p>", opponent1.Name, opponent2.Name);
            else if (opponent1.Health <= 0)
                resultLabel.Text = String.Format("<p>{0} defeated {1}.</p>", opponent2.Name, opponent1.Name);
            else
                resultLabel.Text = String.Format("<p>{0} defeated {1}.</p>", opponent1.Name, opponent2.Name);
        }


        private void printStats(Character character)
        {
            resultLabel.Text += String.Format("<p>Name: {0} - Health: {1} - Damage Max: {2} - Attack Bonus: {3}", 
                character.Name, 
                character.Health, 
                character.DamageMaximum, 
                character.AttackBonus); 
        }

        

    }
    //Character class and 2 methods

    class Character
    {
        public string Name { get; set; }
        public int Health { get; set; }
        public int DamageMaximum { get; set; }
        public bool AttackBonus { get; set; }

        public int Attack(Dice dice)
        {
            //Random random = new Random();
            dice.Sides = this.DamageMaximum;
            return dice.Roll();

        }

        public void Defend(int randomAttack)
        {
            this.Health -= randomAttack;
        }
        
    }

    class Dice
    {
        public int Sides { get; set; }

        Random random = new Random();
        public int Roll()
        {
            return random.Next(this.Sides);
        }
    }

}  