<?php
	
	class Poker
	{
		public function isStraight($straight = array())
		{
			$stringStraightFormat = implode("-",$straight);
			if(is_array($straight)){
				$countCards = count($straight);
				if ($countCards >= 5 && $countCards <= 7) {
					$straightValid = $this->availableStraight();
					asort($straight);
					$stringStraight = implode("",$straight);
					foreach ($straightValid as $val){
						$pos = strpos($stringStraight, $val);
						if($pos !== false){
							echo "\n <br> Escalera: ".$stringStraightFormat;
							return true;
						}
					}
					echo "\n <br> No Es Escalera: ".$stringStraightFormat;
					return false;
				} else {
					echo "\n <br> Mano No Válida: ".$stringStraightFormat;
					return false;
				}
			} else {
				echo "\n <br> Mano No Válida: ".$stringStraightFormat;
				return false;
			}
		}
		
		private function availableStraight()
		{
			$straightCorrect = array(
				"23456","34567","45678","56789",
				"678910","7891011","89101112",
				"910111213","1011121314","211121314",
				"23121314","2341314","234514"
			);
			
			return $straightCorrect;
		}
		
	}
	