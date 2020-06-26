--Min/Max Value
MIN_ID		=1000		--4 digit, by DataManager::GetDesc()
MAX_ID		=268435455	--9 digit, by DataManager::GetDesc()
MAX_COUNTER	=65535		--max number for adding/removing counters, by card::add_counter(), field::remove_counter()
MAX_NUMBER	=999999999	--Max number allowed in YGOPro
--Card ID
CARD_BLASTER_BLADE					=10001005	--Supported by "Solitary Knight, Gancelot" (TD01/003)
CARD_WYVERN_STRIKE_TEJAS			=10002006	--Supported by "Wyvern Strike, Jarran" (TD02/011)
CARD_CRIMSON_BUTTERFLY_BRIGITTE		=10001001	--EVENT_CUSTOM+EVENT_DRIVE_CHECK
CARD_WINGAL							=10001009	--EVENT_CUSTOM+EVENT_BOOST
CARD_BRINGER_OF_GOOD_LUCK_EPONA		=10001013	--EVENT_CUSTOM+EVENT_TRIGGER_UNIT
--Location
LOCATION_ALL		=0xff		--All locations
LOCATION_DECK		=0x01		--Deck
LOCATION_HAND		=0x02		--Hand
LOCATION_MZONE		=0x04		--Monster Zone
LOCATION_SZONE		=0x08		--Spell & Trap Zone (sequences 0~4)
LOCATION_GRAVE		=0x10		--Graveyard
LOCATION_REMOVED	=0x20		--Banished
LOCATION_GZONE		=0x40		--G Zone
LOCATION_SOUL		=0x80		--Soul
LOCATION_ONFIELD	=0x0c		--On the field (LOCATION_MZONE+LOCATION_SZONE)
--Location (for redirect)
--If you specify LOCATION_DECK in the redirection effect, the card will return to the top of the Deck
LOCATION_DECKBOT	=0x10001	--(unused)
LOCATION_DECKSHF	=0x20001	--(unused)
--Deck Sequence (for Duel.SendtoDeck)
SEQ_DECK_TOP		=0		--Return to the top of the Deck
SEQ_DECK_BOTTOM		=1		--Return to the bottom of the Deck
SEQ_DECK_SHUFFLE	=2		--Shuffle into the Deck
SEQ_DECK_UNEXIST	=-2		--Disappear from the game
--Zone (Location + Sequence, can be used for EFFECT_DISABLE_FIELD)
ZONE_VC					=0x4	--Vanguard Circle
ZONE_RC_FRONT			=0xa	--Front Rear-Guard Circles
ZONE_RC_BACK			=0xe	--Back Rear-Guard Circles
--Position
POS_FACEUP_STAND		=0x1	--Face-up Stand
POS_FACEDOWN_STAND		=0x2	--Face-down Stand
POS_FACEUP_REST			=0x4	--Face-up Rest
POS_FACEDOWN_REST		=0x8	--Face-down Rest
POS_FACEUP				=0x5	--Face-up
POS_FACEDOWN			=0xa	--Face-down
POS_STAND				=0x3	--Stand
POS_REST				=0xc	--Rest
--Card Type
TYPE_ALL			=0x4ffffff	--All Card Types
TYPE_MONSTER		=0x1		--(unused)
TYPE_NORMAL_UNIT	=0x2		--Normal Unit
TYPE_TRIGGER_UNIT	=0x4		--Trigger Unit
TYPE_NORMAL			=0x10		--(unused)
TYPE_EFFECT			=0x20		--(unused)
TYPE_FUSION			=0x40		--Critical Trigger
TYPE_RITUAL			=0x80		--Heal Trigger
TYPE_TRAPMONSTER	=0x100		--Draw Trigger
TYPE_SPIRIT			=0x200		--Stand Trigger
TYPE_UNION			=0x400		--(unused)
TYPE_DUAL			=0x800		--(unused)
TYPE_NO_EFFECT		=0x1000		--Card that has no effect
TYPE_SYNCHRO		=0x2000		--(unused)
TYPE_TOKEN			=0x4000		--(unused)
TYPE_QUICKPLAY		=0x10000	--(unused)
TYPE_CONTINUOUS		=0x20000	--(unused)
TYPE_EQUIP			=0x40000	--(unused)
TYPE_FIELD			=0x80000	--(unused)
TYPE_COUNTER		=0x100000	--(unused)
TYPE_FLIP			=0x200000	--(unused)
TYPE_TOON			=0x400000	--(unused)
TYPE_XYZ			=0x800000	--(unused)
TYPE_PENDULUM		=0x1000000	--(unused)
TYPE_SPSUMMON		=0x2000000	--(unused)
TYPE_LINK			=0x4000000	--(unused)
--Trigger Type
TRIGGER_CRITICAL	=0x20		--Critical
TRIGGER_HEAL		=0x80		--Heal
TRIGGER_DRAW		=0x100		--Draw
TRIGGER_STAND		=0x200		--Stand
--Nation
NATION_ALL				=0xff		--All Nations
NATION_UNITED_SANCTUARY	=0x01		--United Sanctuary
NATION_DRAGON_EMPIRE	=0x02		--Dragon Empire
NATION_STAR_GATE		=0x04		--Star Gate
NATION_DARK_ZONE		=0x08		--Dark Zone
NATION_MAGALLANICA		=0x10		--Magallanica
NATION_ZOO				=0x20		--Zoo
--<<Clan>>
CLAN_ROYAL_PALADIN		=0x1	--Introduced by "Crimson Butterfly, Brigitte" (TD01/001)
CLAN_KAGERO				=0x2	--Introduced by "Dragonic Overlord" (TD02/001)
--<Race>
RACE_SALAMANDER			=0x1	--Introduced by "Crimson Butterfly, Brigitte" (TD01/001)
RACE_HUMAN				=0x2	--Introduced by "Knight of Conviction, Bors" (TD01/002)
RACE_ELF				=0x3	--Introduced by "Solitary Knight, Gancelot" (TD01/003)
RACE_GIANT				=0x4	--Introduced by "Little Sage, Marron" (TD01/008)
RACE_HIGH_BEAST			=0x5	--Introduced by "Wingal" (TD01/009)
RACE_ANGEL				=0x6	--Introduced by "Stardust Trumpeter" (TD01/012)
RACE_SYLPH				=0x7	--Introduced by "Bringer of Good Luck, Epona" (TD01/013)
RACE_GNOME				=0x8	--Introduced by "Weapons Dealer, Govannon" (TD01/015)
RACE_FLAME_DRAGON		=0x9	--Introduced by "Dragonic Overlord" (TD02/001)
RACE_WARBEAST			=0xa	--Introduced by "Dragon Monk, Goku" (TD02/002)
RACE_DRAGONMAN			=0xb	--Introduced by "Demonic Dragon Berserker, Yaksha" (TD02/003)
RACE_WINGED_DRAGON		=0xc	--Introduced by "Wyvern Strike, Tejas" (TD02/006)
RACE_DEMON				=0xd	--Introduced by "Embodiment of Armor, Bahr" (TD02/007)
RACE_GILLMAN			=0xe	--Introduced by "Dragon Monk, Gojo" (TD02/008)
--Reason
--The reason for sending a card to another location
REASON_DESTROY		=0x1		--(unused)
REASON_RELEASE		=0x2		--(unused)
REASON_TEMPORARY	=0x4		--(unused)
REASON_MATERIAL		=0x8		--(unused)
REASON_SUMMON		=0x10		--(unused)
REASON_BATTLE		=0x20		--Battle destroyed
REASON_EFFECT		=0x40		--Effect
REASON_COST			=0x80		--Cost
REASON_ADJUST		=0x100		--(unused)
REASON_LOST_TARGET	=0x200		--(unused)
REASON_RULE			=0x400		--Rule
REASON_SPSUMMON		=0x800		--(unused)
REASON_DISSUMMON	=0x1000		--(unused)
REASON_FLIP			=0x2000		--(unused)
REASON_DISCARD		=0x4000		--Discarded
REASON_RDAMAGE		=0x8000		--(unused)
REASON_RRECOVER		=0x10000	--(unused)
REASON_RETURN		=0x20000	--(unused)
REASON_FUSION		=0x40000	--(unused)
REASON_SYNCHRO		=0x80000	--(unused)
REASON_RITUAL		=0x100000	--(unused)
REASON_XYZ			=0x200000	--(unused)
REASON_REPLACE		=0x1000000	--(unused)
REASON_DRAW			=0x2000000	--(unused)
REASON_REDIRECT		=0x4000000	--(unused)
REASON_TRIGGER		=0x8000000	--Sent to the Trigger Zone due to a Drive/Damage Check
REASON_LINK			=0x10000000	--(unused)
REASON_DAMAGE		=0x20000000	--Sent to the Damage Zone due to a Damage Check
--Location Reason
LOCATION_REASON_TOFIELD		=0x1	--(unused)
LOCATION_REASON_CONTROL		=0x2	--(unused)
LOCATION_REASON_COUNT		=0x4	--(unused, only available in YGOPro Percy)
--Win Reason
WIN_REASON_DECKOUT		=0x2	--Ran out of cards in the deck
WIN_REASON_INVALID		=0x10	--Invalid deck
--Summon Type
SUMMON_TYPE_NORMAL		=0x10000000 --(unused)
SUMMON_TYPE_ADVANCE		=0x11000000 --(unused)
SUMMON_TYPE_DUAL		=0x12000000	--(unused)
SUMMON_TYPE_FLIP		=0x20000000	--(unused)
SUMMON_TYPE_SPECIAL		=0x40000000	--(unused)
SUMMON_TYPE_FUSION		=0x43000000	--(unused)
SUMMON_TYPE_RITUAL		=0x45000000	--(unused)
SUMMON_TYPE_SYNCHRO		=0x46000000	--(unused)
SUMMON_TYPE_XYZ			=0x49000000	--(unused)
SUMMON_TYPE_PENDULUM	=0x4a000000 --(unused)
SUMMON_TYPE_LINK		=0x4c000000	--(unused)
--Summon Value
SUMMON_VALUE_SELF					=0x1	--(unused)
SUMMON_VALUE_DARK_FUSION			=0x10	--(unused)
SUMMON_VALUE_BLACK_GARDEN			=0x11	--(unused)
SUMMON_VALUE_SYNCHRO_MATERIAL		=0x12	--(unused)
SUMMON_VALUE_DARK_SANCTUARY			=0x13	--(unused)
SUMMON_VALUE_MILLENNIUM_REVELATION	=0x14	--(unused)
SUMMON_VALUE_LV						=0x1000	--(unused)
SUMMON_VALUE_GLADIATOR				=0x2000	--(unused)
SUMMON_VALUE_EVOLTILE				=0x4000	--(unused)
--Card Status
STATUS_DISABLED				=0x0001		--(unused)
STATUS_TO_ENABLE			=0x0002		--(unused)
STATUS_TO_DISABLE			=0x0004		--(unused)
STATUS_PROC_COMPLETE		=0x0008		--(unused)
STATUS_SET_TURN				=0x0010		--(unused)
STATUS_NO_LEVEL				=0x0020		--(unused)
STATUS_BATTLE_RESULT		=0x0040		--(unused)
STATUS_SPSUMMON_STEP		=0x0080		--(unused)
STATUS_FORM_CHANGED			=0x0100		--(unused)
STATUS_SUMMONING			=0x0200		--(unused)
STATUS_EFFECT_ENABLED		=0x0400		--(unused)
STATUS_DRIVE_CHECK			=0x0800		--Revealed during Drive Check
STATUS_DESTROY_CONFIRMED	=0x1000		--(unused)
STATUS_LEAVE_CONFIRMED		=0x2000		--(unused)
STATUS_BATTLE_DESTROYED		=0x4000		--(unused)
STATUS_COPYING_EFFECT		=0x8000		--(unused)
STATUS_CHAINING				=0x10000	--In a Chain
STATUS_SUMMON_DISABLED		=0x20000	--(unused)
STATUS_ACTIVATE_DISABLED	=0x40000	--(unused)
STATUS_EFFECT_REPLACED		=0x80000	--(unused)
STATUS_BOOSTING				=0x100000	--Boosting
STATUS_ATTACK_CANCELED		=0x200000	--(unused)
STATUS_INITIALIZING			=0x400000	--(unused)
STATUS_ACTIVATED			=0x800000	--(unused, only available in YGOPro Percy)
STATUS_JUST_POS				=0x1000000	--(unused)
STATUS_CONTINUOUS_POS		=0x2000000	--(unused)
STATUS_FORBIDDEN			=0x4000000	--(unused)
STATUS_ACT_FROM_HAND		=0x8000000	--(unused)
STATUS_OPPO_BATTLE			=0x10000000	--(unused)
STATUS_FLIP_SUMMON_TURN		=0x20000000	--(unused)
STATUS_SPSUMMON_TURN		=0x40000000	--(unused)
--Assume
ASSUME_CODE			=1	--(unused)
ASSUME_TYPE			=2	--(unused)
ASSUME_LEVEL		=3	--(unused)
ASSUME_RANK			=4	--(unused)
ASSUME_ATTRIBUTE	=5	--(unused)
ASSUME_RACE			=6	--(unused)
ASSUME_ATTACK		=7	--(unused)
ASSUME_DEFENSE		=8	--(unused)
ASSUME_LINK			=9	--(unused, only available in YGOPro Percy)
ASSUME_LINKMARKER	=10	--(unused, only available in YGOPro Percy)
--Link Marker
LINK_MARKER_BOTTOM_LEFT		=0x001	--(unused)
LINK_MARKER_BOTTOM			=0x002	--(unused)
LINK_MARKER_BOTTOM_RIGHT	=0x004	--(unused)
LINK_MARKER_LEFT			=0x008	--(unused)
LINK_MARKER_RIGHT			=0x020	--(unused)
LINK_MARKER_TOP_LEFT		=0x040	--(unused)
LINK_MARKER_TOP				=0x080	--(unused)
LINK_MARKER_TOP_RIGHT		=0x100	--(unused)
--Counter
COUNTER_WITHOUT_PERMIT		=0x1000	--(unused)
COUNTER_NEED_ENABLE			=0x2000	--(unused)
--Phase
PHASE_DRAW			=0x01	--Draw Phase
PHASE_RIDE			=0x02	--Ride Phase
PHASE_MAIN1			=0x04	--Main Phase 1
PHASE_BATTLE_START	=0x08	--Start Step
PHASE_BATTLE_STEP	=0x10	--Battle Step
PHASE_DAMAGE		=0x20	--Damage Step
PHASE_DAMAGE_CAL	=0x40	--Damage calculation
PHASE_BATTLE		=0x80	--End Step
PHASE_MAIN2			=0x100	--Main Phase 2
PHASE_END			=0x200	--End Phase
--Player
PLAYER_ONE			=0		--Player who goes first
PLAYER_TWO			=1		--Player who goes second
PLAYER_NONE			=2		--No players
PLAYER_ALL			=3		--All players
PLAYER_OWNER		=nil	--player=PLAYER_OWNER in Duel.Sendto..(targets, player, reason)
PLAYER_SELF			=0		--player=PLAYER_SELF in Effect.SetCondition(Auxiliary.Function(player)), etc.
PLAYER_OPPO			=1		--player=PLAYER_OPPO in Effect.SetCondition(Auxiliary.Function(player)), etc.
--Chain Information
CHAININFO_CHAIN_COUNT			=0x01	--(unused)
CHAININFO_TRIGGERING_EFFECT		=0x02	--(unused)
CHAININFO_TRIGGERING_PLAYER		=0x04	--(unused)
CHAININFO_TRIGGERING_CONTROLER	=0x08	--(unused)
CHAININFO_TRIGGERING_LOCATION	=0x10	--(unused)
CHAININFO_TRIGGERING_SEQUENCE	=0x20	--(unused)
CHAININFO_TARGET_CARDS			=0x40	--(unused)
CHAININFO_TARGET_PLAYER			=0x80	--(unused)
CHAININFO_TARGET_PARAM			=0x100	--(unused)
CHAININFO_DISABLE_REASON		=0x200	--(unused)
CHAININFO_DISABLE_PLAYER		=0x400	--(unused)
CHAININFO_CHAIN_ID				=0x800	--(unused)
CHAININFO_TYPE					=0x1000	--(unused)
CHAININFO_EXTTYPE				=0x2000	--(unused)
CHAININFO_TRIGGERING_POSITION	=0x4000	--(unused)
--The following is not available in YGOPro Percy
CHAININFO_TRIGGERING_CODE		=0x8000		--(unused)
CHAININFO_TRIGGERING_CODE2		=0x10000	--(unused)
CHAININFO_TRIGGERING_LEVEL		=0x40000	--(unused)
CHAININFO_TRIGGERING_RANK		=0x80000	--(unused)
CHAININFO_TRIGGERING_ATTRIBUTE	=0x100000	--(unused)
CHAININFO_TRIGGERING_RACE		=0x200000	--(unused)
CHAININFO_TRIGGERING_ATTACK		=0x400000	--(unused)
CHAININFO_TRIGGERING_DEFENSE	=0x800000	--(unused)
--Reset
RESET_SELF_TURN		=0x10000000			--Reset on own turn (combined with RESET_PHASE)
RESET_OPPO_TURN		=0x20000000			--Reset on opponent's turn (combined with RESET_PHASE)
RESET_PHASE			=0x40000000			--Reset in a specific phase (combined with PHASE constant)
RESET_CHAIN			=0x80000000			--Reset when a Chain resolves
RESET_EVENT			=0x1000				--Reset under a specified condition (combined with following events)
RESET_CARD			=0x2000				--(unused)
RESET_CODE			=0x4000				--(unused)
RESET_COPY			=0x8000				--Reset the copied effect
--The following is used in combination with RESET_EVENT in SetReset
RESET_DISABLE		=0x00010000			--Reset when effect is negated (only applicable to owner==effect handler)
RESET_TURN_SET		=0x00020000			--Reset when face-down on the field
RESET_TOGRAVE		=0x00040000			--(unused)
RESET_REMOVE		=0x00080000			--(unused)
RESET_TEMP_REMOVE	=0x00100000			--(unused)
RESET_TOHAND		=0x00200000			--(unused)
RESET_TODECK		=0x00400000			--(unused)
RESET_LEAVE			=0x00800000			--(unused)
RESET_TOFIELD		=0x01000000			--(unused)
RESET_CONTROL		=0x02000000			--(unused)
RESET_OVERLAY		=0x04000000			--(unused)
RESET_MSCHANGE		=0x08000000			--(unused)
--Reset combinations
RESETS_STANDARD		=0x7e0000			--RESET_TURN_SET+RESET_TOGRAVE+RESET_REMOVE+RESET_TEMP_REMOVE+RESET_TOHAND+RESET_TODECK
--Effect Type
--Classification of effects
EFFECT_TYPE_SINGLE			=0x0001		--Effect applied to only a single card on the field
EFFECT_TYPE_FIELD			=0x0002		--Effect applied to all cards/players in a location
EFFECT_TYPE_EQUIP			=0x0004		--(unused)
EFFECT_TYPE_ACTIONS			=0x0008		--(unused)
EFFECT_TYPE_ACTIVATE		=0x0010		--(unused)
EFFECT_TYPE_FLIP			=0x0020		--(unused)
EFFECT_TYPE_IGNITION		=0x0040		--Activated Effect
EFFECT_TYPE_TRIGGER_O		=0x0080		--Optional Automatic Effect
EFFECT_TYPE_QUICK_O			=0x0100		--Optional Quick Effect
EFFECT_TYPE_TRIGGER_F		=0x0200		--Mandatory Automatic Effect
EFFECT_TYPE_QUICK_F			=0x0400		--Mandatory Quick Effect
EFFECT_TYPE_CONTINUOUS		=0x0800		--Continuous Effect, non-Chaining effect
EFFECT_TYPE_XMATERIAL		=0x1000		--(unused)
EFFECT_TYPE_GRANT			=0x2000		--(unused)
EFFECT_TYPE_TARGET			=0x4000		--(unused)
--Flag
--Characteristics of effects
EFFECT_FLAG_INITIAL				=0x0001		--(unused)
EFFECT_FLAG_FUNC_VALUE			=0x0002		--(unused)
EFFECT_FLAG_COUNT_LIMIT			=0x0004		--(unused)
EFFECT_FLAG_FIELD_ONLY			=0x0008		--(unused)
EFFECT_FLAG_CARD_TARGET			=0x0010		--Targets cards
EFFECT_FLAG_IGNORE_RANGE		=0x0020		--Affects cards in all locations
EFFECT_FLAG_ABSOLUTE_TARGET		=0x0040		--(unused)
EFFECT_FLAG_IGNORE_IMMUNE		=0x0080		--Ignores effect immunity
EFFECT_FLAG_SET_AVAILABLE		=0x0100		--Affects face-down cards on the field
EFFECT_FLAG_CANNOT_NEGATE		=0x0200		--(unused)
EFFECT_FLAG_CANNOT_DISABLE		=0x0400		--Cannot be negated
EFFECT_FLAG_PLAYER_TARGET		=0x0800		--Targets players
EFFECT_FLAG_BOTH_SIDE			=0x1000		--(unused)
EFFECT_FLAG_COPY_INHERIT		=0x2000		--(unused)
EFFECT_FLAG_DAMAGE_STEP			=0x4000		--Can be activated during the Damage Step (not required for EFFECT_TYPE_SINGLE)
EFFECT_FLAG_DAMAGE_CAL			=0x8000		--Can be activated during damage calculation (not required for EFFECT_TYPE_SINGLE)
EFFECT_FLAG_DELAY				=0x10000	--Optional Trigger Effect cannot miss timing
EFFECT_FLAG_SINGLE_RANGE		=0x20000	--Sets the range of EFFECT_TYPE_SINGLE effects
EFFECT_FLAG_UNCOPYABLE			=0x40000	--Cannot be copied
EFFECT_FLAG_OATH				=0x80000	--(unused)
EFFECT_FLAG_CALL_PARAM			=0x100000	--Enables SetTargetRange to specify the call destination and position
EFFECT_FLAG_REPEAT				=0x200000	--(unused)
EFFECT_FLAG_NO_TURN_RESET		=0x400000	--"Once while face-up on the field"
EFFECT_FLAG_EVENT_PLAYER		=0x800000	--(unused)
EFFECT_FLAG_OWNER_RELATE		=0x1000000	--(unused)
EFFECT_FLAG_AVAILABLE_BD		=0x2000000	--(deprecated, only available in YGOPro Percy)
EFFECT_FLAG_CLIENT_HINT			=0x4000000	--Enables a tooltip of the effect (can only be used outside initial_effect)
EFFECT_FLAG_CHAIN_UNIQUE		=0x8000000	--(deprecated, only available in YGOPro Percy)
EFFECT_FLAG_LIMIT_ZONE			=0x10000000	--(unused, not available in YGOPro Percy)
EFFECT_FLAG_COF					=0x20000000 --(deprecated)
EFFECT_FLAG_CVAL_CHECK			=0x40000000	--(deprecated, only available in YGOPro Percy)
EFFECT_FLAG_IMMEDIATELY_APPLY	=0x80000000	--(unused)

EFFECT_FLAG2_NAGA				=0x0001		--(deprecated)
EFFECT_FLAG2_COF				=0x0002		--(unused)
EFFECT_FLAG2_MAJESTIC_MUST_COPY	=0x80000000	--(unused, only available in YGOPro Percy)
--Effect Code
EFFECT_IMMUNE_EFFECT				=1		--(unused)
EFFECT_DISABLE						=2		--(unused)
EFFECT_CANNOT_DISABLE				=3		--(unused)
EFFECT_SET_CONTROL					=4		--(unused)
EFFECT_CANNOT_CHANGE_CONTROL		=5		--(unused)
EFFECT_CANNOT_ACTIVATE				=6		--(unused)
EFFECT_CANNOT_TRIGGER				=7		--(unused)
EFFECT_DISABLE_EFFECT				=8		--(unused)
EFFECT_DISABLE_CHAIN				=9		--(unused)
EFFECT_DISABLE_TRAPMONSTER			=10		--(unused)
EFFECT_CANNOT_INACTIVATE			=12		--(unused)
EFFECT_CANNOT_DISEFFECT				=13		--(unused)
EFFECT_CANNOT_CHANGE_POSITION		=14		--Cannot change position
EFFECT_TRAP_ACT_IN_HAND				=15		--(unused)
EFFECT_TRAP_ACT_IN_SET_TURN			=16		--(unused)
EFFECT_REMAIN_FIELD					=17		--(unused)
EFFECT_MONSTER_SSET					=18		--(unused)
EFFECT_CANNOT_SUMMON				=20		--Cannot Normal Summon monsters
EFFECT_CANNOT_FLIP_SUMMON			=21		--(unused)
EFFECT_CANNOT_SPECIAL_SUMMON		=22		--(unused)
EFFECT_CANNOT_MSET					=23		--Cannot Set monsters
EFFECT_CANNOT_SSET					=24		--Cannot Set Spells/Traps
EFFECT_CANNOT_DRAW					=25		--(unused)
EFFECT_CANNOT_DISABLE_SUMMON		=26		--(unused)
EFFECT_CANNOT_DISABLE_SPSUMMON		=27		--(unused)
EFFECT_SET_SUMMON_COUNT_LIMIT		=28		--(unused)
EFFECT_EXTRA_SUMMON_COUNT			=29		--(unused)
EFFECT_SPSUMMON_CONDITION			=30		--(unused)
EFFECT_REVIVE_LIMIT					=31		--(unused)
EFFECT_SUMMON_PROC					=32		--(unused)
EFFECT_LIMIT_SUMMON_PROC			=33		--(unused)
EFFECT_CALL_PROC					=34		--Unit call procedure
EFFECT_EXTRA_SET_COUNT				=35		--(unused)
EFFECT_SET_PROC						=36		--(unused)
EFFECT_LIMIT_SET_PROC				=37		--(unused)
EFFECT_DEVINE_LIGHT					=38		--(unused)
EFFECT_CANNOT_DISABLE_FLIP_SUMMON	=39		--(unused)
EFFECT_INDESTRUCTIBLE				=40		--Cannot be destroyed
EFFECT_INDESTRUCTIBLE_EFFECT		=41		--(unused)
EFFECT_INDESTRUCTIBLE_BATTLE		=42		--Cannot be destroyed by battle
EFFECT_UNRELEASABLE_SUM				=43		--(unused)
EFFECT_UNRELEASABLE_NONSUM			=44		--(unused)
EFFECT_DESTROY_SUBSTITUTE			=45		--(unused)
EFFECT_CANNOT_RELEASE				=46		--(unused)
EFFECT_INDESTRUCTIBLE_COUNT			=47		--(unused)
EFFECT_UNRELEASABLE_EFFECT			=48		--(unused)
EFFECT_DESTROY_REPLACE				=50		--(unused)
EFFECT_RELEASE_REPLACE				=51		--(unused)
EFFECT_SEND_REPLACE					=52		--(unused)
EFFECT_CANNOT_DISCARD_HAND			=55		--(unused)
EFFECT_CANNOT_DISCARD_DECK			=56		--(unused)
EFFECT_CANNOT_USE_AS_COST			=57		--(unused)
EFFECT_CANNOT_PLACE_COUNTER			=58		--(unused)
EFFECT_CANNOT_TO_GRAVE_AS_COST		=59		--(unused)
EFFECT_LEAVE_FIELD_REDIRECT			=60		--(unused)
EFFECT_TO_HAND_REDIRECT				=61		--(unused)
EFFECT_TO_DECK_REDIRECT				=62		--(unused)
EFFECT_TO_GRAVE_REDIRECT			=63		--(unused)
EFFECT_REMOVE_REDIRECT				=64		--(unused)
EFFECT_CANNOT_TO_HAND				=65		--(unused)
EFFECT_CANNOT_TO_DECK				=66		--(unused)
EFFECT_CANNOT_REMOVE				=67		--(unused)
EFFECT_CANNOT_TO_GRAVE				=68		--(unused)
EFFECT_CANNOT_TURN_SET				=69		--(unused)
EFFECT_CANNOT_BE_BATTLE_TARGET		=70		--(unused)
EFFECT_CANNOT_BE_EFFECT_TARGET		=71		--(unused)
EFFECT_IGNORE_BATTLE_TARGET			=72		--(unused)
EFFECT_CANNOT_DIRECT_ATTACK			=73		--Cannot attack directly
EFFECT_DIRECT_ATTACK				=74		--(unused)
EFFECT_DUAL_STATUS					=75		--(unused)
EFFECT_EQUIP_LIMIT					=76		--(unused)
EFFECT_DUAL_SUMMONABLE				=77		--(unused)
EFFECT_REVERSE_DAMAGE				=80		--(unused)
EFFECT_REVERSE_RECOVER				=81		--(unused)
EFFECT_CHANGE_DAMAGE				=82		--(unused)
EFFECT_REFLECT_DAMAGE				=83		--(unused)
EFFECT_CANNOT_ATTACK				=85		--(unused)
EFFECT_CANNOT_ATTACK_ANNOUNCE		=86		--(unused)
EFFECT_CANNOT_CHANGE_POS_E			=87		--Cannot change position by effects
EFFECT_ACTIVATE_COST				=90		--(unused)
EFFECT_SUMMON_COST					=91		--(unused)
EFFECT_SPSUMMON_COST				=92		--(unused)
EFFECT_FLIPSUMMON_COST				=93		--(unused)
EFFECT_MSET_COST					=94		--(unused)
EFFECT_SSET_COST					=95		--(unused)
EFFECT_ATTACK_COST					=96		--(unused)

EFFECT_UPDATE_POWER					=100	--Increase/decrease power
EFFECT_SET_ATTACK					=101	--(unused)
EFFECT_SET_ATTACK_FINAL				=102	--(unused)
EFFECT_SET_BASE_ATTACK				=103	--(unused)
EFFECT_UPDATE_SHIELD				=104	--(reserved) Increase/decrease shield
EFFECT_SET_DEFENSE					=105	--(unused)
EFFECT_SET_DEFENSE_FINAL			=106	--(unused)
EFFECT_SET_BASE_DEFENSE				=107	--Set original DEF
EFFECT_REVERSE_UPDATE				=108	--(unused)
EFFECT_SWAP_AD						=109	--(unused)
EFFECT_SWAP_BASE_AD					=110	--(unused)
EFFECT_SWAP_ATTACK_FINAL			=111	--(N/A)
EFFECT_SWAP_DEFENSE_FINAL			=112	--(N/A)
EFFECT_ADD_CODE						=113	--(unused)
EFFECT_CHANGE_CODE					=114	--(unused)
EFFECT_ADD_TYPE						=115	--(unused)
EFFECT_REMOVE_TYPE					=116	--(unused)
EFFECT_CHANGE_TYPE					=117	--(unused)
EFFECT_ADD_RACE						=120	--(unused)
EFFECT_REMOVE_RACE					=121	--(unused)
EFFECT_CHANGE_RACE					=122	--(unused)
EFFECT_ADD_ATTRIBUTE				=125	--(unused)
EFFECT_REMOVE_ATTRIBUTE				=126	--(unused)
EFFECT_CHANGE_ATTRIBUTE				=127	--(unused)
EFFECT_UPDATE_GRADE					=130	--(reserved) Increase/decrease grade
EFFECT_CHANGE_GRADE					=131	--(reserved) Change grade
EFFECT_UPDATE_RANK					=132	--(unused)
EFFECT_CHANGE_RANK					=133	--(unused)
EFFECT_UPDATE_LSCALE				=134	--(unused)
EFFECT_CHANGE_LSCALE				=135	--(unused)
EFFECT_UPDATE_RSCALE				=136	--(unused)
EFFECT_CHANGE_RSCALE				=137	--(unused)
EFFECT_SET_POSITION					=140	--(unused)
EFFECT_SELF_DESTROY					=141	--(unused)
EFFECT_SELF_TOGRAVE					=142	--(unused)
EFFECT_DOUBLE_TRIBUTE				=150	--(unused)
EFFECT_DECREASE_TRIBUTE				=151	--(unused)
EFFECT_DECREASE_TRIBUTE_SET			=152	--(unused)
EFFECT_EXTRA_RELEASE				=153	--(unused)
EFFECT_TRIBUTE_LIMIT				=154	--(unused)
EFFECT_EXTRA_RELEASE_SUM			=155	--(unused)
EFFECT_TRIPLE_TRIBUTE				=156	--(N/A)
EFFECT_ADD_EXTRA_TRIBUTE			=157	--(unused)
EFFECT_EXTRA_RELEASE_NONSUM			=158	--(unused)
EFFECT_PUBLIC						=160	--(unused)
EFFECT_COUNTER_PERMIT				=0x10000--(unused)
EFFECT_COUNTER_LIMIT				=0x20000--(unused)
EFFECT_RCOUNTER_REPLACE				=0x30000--(unused)
EFFECT_LPCOST_CHANGE				=170	--(unused)
EFFECT_LPCOST_REPLACE				=171	--(unused)
EFFECT_SKIP_DP						=180	--(unused)
EFFECT_SKIP_SP						=181	--(unused)
EFFECT_SKIP_M1						=182	--(unused)
EFFECT_SKIP_BP						=183	--(unused)
EFFECT_SKIP_M2						=184	--(unused)
EFFECT_CANNOT_BP					=185	--(unused)
EFFECT_CANNOT_M2					=186	--Cannot conduct Main Phase 2
EFFECT_CANNOT_EP					=187	--(unused)
EFFECT_SKIP_TURN					=188	--(unused)
EFFECT_DEFENSE_ATTACK				=190	--(unused)
EFFECT_MUST_ATTACK					=191	--(unused)
EFFECT_FIRST_ATTACK					=192	--(unused)
EFFECT_ATTACK_ALL					=193	--(unused)
EFFECT_EXTRA_ATTACK					=194	--Increase the number of attacks
EFFECT_MUST_BE_ATTACKED				=195	--Must be attacked (only available in YGOPro Percy)
EFFECT_ONLY_BE_ATTACKED				=196	--(unused)
EFFECT_ATTACK_DISABLED				=197	--(unused)
EFFECT_NO_BATTLE_DAMAGE				=200	--(unused)
EFFECT_AVOID_BATTLE_DAMAGE			=201	--Take no battle damage from attacks involving this card
EFFECT_REFLECT_BATTLE_DAMAGE		=202	--(unused)
EFFECT_PIERCE						=203	--(unused)
EFFECT_BATTLE_DESTROY_REDIRECT		=204	--(unused)
EFFECT_BATTLE_DAMAGE_TO_EFFECT		=205	--(unused)
EFFECT_BOTH_BATTLE_DAMAGE			=206	--(unused, not available in YGOPro Percy)
EFFECT_ALSO_BATTLE_DAMAGE			=207	--(unused, not available in YGOPro Percy)
EFFECT_CHANGE_BATTLE_DAMAGE			=208	--(unused, not available in YGOPro Percy)
EFFECT_TOSS_COIN_REPLACE			=220	--(unused)
EFFECT_TOSS_DICE_REPLACE			=221	--(unused)
EFFECT_FUSION_MATERIAL				=230	--(unused)
EFFECT_CHAIN_MATERIAL				=231	--(unused)
EFFECT_SYNCHRO_MATERIAL				=232	--(unused)
EFFECT_XYZ_MATERIAL					=233	--(unused)
EFFECT_FUSION_SUBSTITUTE			=234	--(unused)
EFFECT_CANNOT_BE_FUSION_MATERIAL	=235	--(unused)
EFFECT_CANNOT_BE_SYNCHRO_MATERIAL	=236	--(unused)
EFFECT_SYNCHRO_MATERIAL_CUSTOM		=237	--(unused)
EFFECT_CANNOT_BE_XYZ_MATERIAL		=238	--(unused)
EFFECT_CANNOT_BE_LINK_MATERIAL		=239	--(unused)
EFFECT_SYNCHRO_LEVEL				=240	--(unused)
EFFECT_RITUAL_LEVEL					=241	--(unused)
EFFECT_XYZ_LEVEL					=242	--(unused)
EFFECT_EXTRA_RITUAL_MATERIAL		=243	--(unused)
EFFECT_NONTUNER						=244	--(unused)
EFFECT_OVERLAY_REMOVE_REPLACE		=245	--(unused)
EFFECT_SCRAP_CHIMERA				=246	--(unused)
EFFECT_TUNE_MAGICIAN_X				=247	--(unused)
EFFECT_TUNE_MAGICIAN_F				=248	--(unused, not available in YGOPro Percy)
EFFECT_PRE_MONSTER					=250	--(unused)
EFFECT_MATERIAL_CHECK				=251	--(unused)
EFFECT_DISABLE_FIELD				=260	--(unused)
EFFECT_USE_EXTRA_MZONE				=261	--(unused)
EFFECT_USE_EXTRA_SZONE				=262	--(unused)
EFFECT_MAX_MZONE					=263	--(unused)
EFFECT_MAX_SZONE					=264	--(unused)
EFFECT_FORCE_MZONE					=265	--(unused, only available in YGOPro Percy)
EFFECT_BECOME_LINKED_ZONE			=266	--(unused, only available in YGOPro Percy)
EFFECT_HAND_LIMIT					=270	--Change the hand size limit
EFFECT_DRAW_COUNT					=271	--(unused)
EFFECT_SPIRIT_DONOT_RETURN			=280	--(unused)
EFFECT_SPIRIT_MAYNOT_RETURN			=281	--(unused)
EFFECT_CHANGE_ENVIRONMENT			=290	--(unused)
EFFECT_NECRO_VALLEY					=291	--(unused)
EFFECT_FORBIDDEN					=292	--(unused)
EFFECT_NECRO_VALLEY_IM				=293	--(unused)
EFFECT_REVERSE_DECK					=294	--(unused)
EFFECT_REMOVE_BRAINWASHING			=295	--(unused)
EFFECT_BP_TWICE						=296	--(unused)
EFFECT_UNIQUE_CHECK					=297	--(unused)
EFFECT_MATCH_KILL					=300	--(unused)
EFFECT_SYNCHRO_CHECK				=310	--(unused)
EFFECT_QP_ACT_IN_NTPHAND			=311	--(unused)
EFFECT_MUST_BE_MATERIAL				=312	--(unused, only available in YGOPro Percy)
EFFECT_TO_GRAVE_REDIRECT_CB			=313	--(unused)
EFFECT_CHANGE_LEVEL_FINAL			=314	--(unused, only available in YGOPro Percy)
EFFECT_CHANGE_RANK_FINAL			=315	--(unused, only available in YGOPro Percy)
EFFECT_MUST_BE_FMATERIAL			=316	--(unused, only available in YGOPro Percy)
EFFECT_MUST_BE_XMATERIAL			=317	--(unused, only available in YGOPro Percy)
EFFECT_MUST_BE_LMATERIAL			=318	--(unused, only available in YGOPro Percy)
EFFECT_SPSUMMON_PROC_G				=320	--(unused)
EFFECT_SPSUMMON_COUNT_LIMIT			=330	--(unused)
EFFECT_LEFT_SPSUMMON_COUNT			=331	--(unused)
EFFECT_CANNOT_SELECT_BATTLE_TARGET	=332	--(unused)
EFFECT_CANNOT_SELECT_EFFECT_TARGET	=333	--(unused)
EFFECT_ADD_SETCODE					=334	--Add setname
EFFECT_NO_EFFECT_DAMAGE				=335	--(unused)
EFFECT_UNSUMMONABLE_CARD			=336	--(unused, only available in YGOPro Percy)
EFFECT_DISABLE_CHAIN_FIELD			=337	--(N/A)
EFFECT_DISCARD_COST_CHANGE			=338	--(unused)
EFFECT_HAND_SYNCHRO					=339	--(unused)
EFFECT_ADD_FUSION_CODE				=340	--(unused)
EFFECT_ADD_FUSION_SETCODE			=341	--(unused)
EFFECT_RISE_TO_FULL_HEIGHT			=342	--(unused, only available in YGOPro Percy)
EFFECT_ONLY_ATTACK_MONSTER			=343	--(unused)
EFFECT_MUST_ATTACK_MONSTER			=344	--(unused)
EFFECT_PATRICIAN_OF_DARKNESS		=345	--(unused)
EFFECT_EXTRA_ATTACK_MONSTER			=346	--(unused)
EFFECT_UNION_STATUS					=347	--(unused)
EFFECT_OLDUNION_STATUS				=348	--(unused)
EFFECT_ADD_FUSION_ATTRIBUTE			=349	--(unused, reserved)
EFFECT_REMOVE_FUSION_ATTRIBUTE		=350	--(unused, reserved)
EFFECT_CHANGE_FUSION_ATTRIBUTE		=351	--(unused)
EFFECT_EXTRA_FUSION_MATERIAL		=352	--(unused)
EFFECT_TUNER_MATERIAL_LIMIT			=353	--(unused)
EFFECT_ADD_LINK_CODE				=354	--(unused)
EFFECT_ADD_LINK_SETCODE				=355	--(unused, reserved)
EFFECT_ADD_LINK_ATTRIBUTE			=356	--(unused, not available in YGOPro Percy)
EFFECT_ADD_LINK_RACE				=357	--(unused, not available in YGOPro Percy)
EFFECT_EXTRA_MATERIAL				=358	--(unused, only available in YGOPro Percy)
EFFECT_QP_ACT_IN_SET_TURN			=359	--(unused, not available in YGOPro Percy)
EFFECT_EXTRA_PENDULUM_SUMMON		=360	--(unused, not available in YGOPro Percy)
EFFECT_MATERIAL_LIMIT				=361	--(unused, not available in YGOPro Percy)
EFFECT_SET_BATTLE_ATTACK			=362	--(unused, not available in YGOPro Percy)
EFFECT_SET_BATTLE_DEFENSE			=363	--(unused, not available in YGOPro Percy)
--The following is only available in YGOPro Percy
EFFECT_CANNOT_LOSE_DECK				=400	--(unused)
EFFECT_CANNOT_LOSE_LP				=401	--(unused)
EFFECT_CANNOT_LOSE_EFFECT			=402	--(unused)
EFFECT_BP_FIRST_TURN				=403	--(unused)
EFFECT_UNSTOPPABLE_ATTACK			=404	--(unused)
EFFECT_ALLOW_NEGATIVE				=405	--(unused)
EFFECT_SELF_ATTACK					=406	--(unused)
EFFECT_BECOME_QUICK					=407	--(unused)
EFFECT_LEVEL_RANK					=408	--(unused)
EFFECT_RANK_LEVEL					=409	--(unused)
EFFECT_LEVEL_RANK_S					=410	--(unused)
EFFECT_RANK_LEVEL_S					=411	--(unused)
EFFECT_UPDATE_LINK					=420	--(unused)
EFFECT_CHANGE_LINK					=421	--(unused)
EFFECT_CHANGE_LINK_FINAL			=422	--(unused)
EFFECT_ADD_LINKMARKER				=423	--(unused)
EFFECT_REMOVE_LINKMARKER			=424	--(unused)
EFFECT_CHANGE_LINKMARKER			=425	--(unused)
--The following is only available in YGOPro VG
EFFECT_REST_MODE					=500	--Workaround to [Rest] a card in LOCATION_SZONE ("Little Sage, Marron" TD01/008)
EFFECT_TWIN_DRIVE					=600	--Twin Drive!! ("Crimson Butterfly, Brigitte" TD01/001)
EFFECT_UPDATE_CRITICAL				=601	--Increase/decrease [Critical] ("Solitary Knight, Gancelot" TD01/003)
--Event Code
--Events that can be used as a trigger for Trigger Effects
EVENT_STARTUP					=1000	--(unused)
EVENT_FLIP						=1001	--(unused)
EVENT_FREE_CHAIN				=1002	--Open window to activate Ignition and Trigger Effects
EVENT_DESTROY					=1010	--(unused)
EVENT_REMOVE					=1011	--(unused)
EVENT_TO_HAND					=1012	--(unused)
EVENT_TO_DECK					=1013	--(unused)
EVENT_TO_GRAVE					=1014	--(unused)
EVENT_LEAVE_FIELD				=1015	--When a card is removed from the field
EVENT_CHANGE_POS				=1016	--(unused)
EVENT_RELEASE					=1017	--(unused)
EVENT_DISCARD					=1018	--(unused)
EVENT_LEAVE_FIELD_P				=1019	--(unused)
EVENT_CHAIN_SOLVING				=1020	--(unused)
EVENT_CHAIN_ACTIVATING			=1021	--(unused)
EVENT_CHAIN_SOLVED				=1022	--After a Chain resolves
EVENT_CHAIN_ACTIVATED			=1023	--(N/A)
EVENT_CHAIN_NEGATED				=1024	--(unused)
EVENT_CHAIN_DISABLED			=1025	--(unused)
EVENT_CHAIN_END					=1026	--(unused)
EVENT_CHAINING					=1027	--When a card/effect is activating in response to another card/effect
EVENT_BECOME_TARGET				=1028	--(unused)
EVENT_DESTROYED					=1029	--(unused)
EVENT_MOVE						=1030	--(unused)
EVENT_ADJUST					=1040	--After adjusting the adjust_all() card
EVENT_SUMMON_SUCCESS			=1100	--(unused)
EVENT_FLIP_SUMMON_SUCCESS		=1101	--(unused)
EVENT_PLACED_VC					=1102	--When a card is placed on (VC)
EVENT_SUMMON					=1103	--(unused)
EVENT_FLIP_SUMMON				=1104	--(unused)
EVENT_SPSUMMON					=1105	--(unused)
EVENT_MSET						=1106	--(unused)
EVENT_SSET						=1107	--(unused)
EVENT_BE_MATERIAL				=1108	--(unused)
EVENT_BE_PRE_MATERIAL			=1109	--(unused)
EVENT_DRAW						=1110	--(unused)
EVENT_DAMAGE					=1111	--When a player takes damage
EVENT_RECOVER					=1112	--(unused)
EVENT_STAND_PHASE				=1113	--Stand Phase
EVENT_SUMMON_NEGATED			=1114	--(unused)
EVENT_FLIP_SUMMON_NEGATED		=1115	--(unused)
EVENT_SPSUMMON_NEGATED			=1116	--(unused)
EVENT_CONTROL_CHANGED			=1120	--(unused)
EVENT_EQUIP						=1121	--(unused)
EVENT_ATTACK_ANNOUNCE			=1130	--When a card attacks
EVENT_BE_BATTLE_TARGET			=1131	--When a card is targeted for an attack
EVENT_BATTLE_START				=1132	--Guard Step
EVENT_BATTLE_CONFIRM			=1133	--Drive Step
EVENT_PRE_DAMAGE_CALCULATE		=1134	--Before damage is applied
EVENT_DAMAGE_CALCULATING		=1135	--(N/A)
EVENT_PRE_BATTLE_DAMAGE			=1136	--(unused)
EVENT_BATTLE_END				=1137	--(N/A)
EVENT_BATTLED					=1138	--After damage calculation
EVENT_BATTLE_DESTROYING			=1139	--(unused)
EVENT_BATTLE_DESTROYED			=1140	--(unused)
EVENT_DAMAGE_STEP_END			=1141	--At the end of a battle
EVENT_ATTACK_DISABLED			=1142	--(unused)
EVENT_BATTLE_DAMAGE				=1143	--(unused)
EVENT_TOSS_DICE					=1150	--(unused)
EVENT_TOSS_COIN					=1151	--(unused)
EVENT_TOSS_COIN_NEGATE			=1152	--(unused)
EVENT_TOSS_DICE_NEGATE			=1153	--(unused)
EVENT_LEVEL_UP					=1200	--(unused)
EVENT_PAY_LPCOST				=1201	--(unused)
EVENT_DETACH_MATERIAL			=1202	--(unused)
EVENT_RETURN_TO_GRAVE			=1203	--(unused)
EVENT_TURN_END					=1210	--At the end of the turn
EVENT_PHASE						=0x1000	--During a phase of a turn (combined with PHASE constant)
EVENT_PHASE_START				=0x2000	--At the start of a phase of a turn (combined with PHASE constant)
EVENT_ADD_COUNTER				=0x10000	--(unused)
EVENT_REMOVE_COUNTER			=0x20000	--(unused)
EVENT_CUSTOM					=0x10000000	--Custom event
--The following is only available in YGOPro VG
EVENT_DRIVE_CHECK				=CARD_CRIMSON_BUTTERFLY_BRIGITTE	--Drive Check
EVENT_PLACED_RC					=CARD_BLASTER_BLADE					--When a card is placed on (RC)
EVENT_BOOST						=CARD_WINGAL						--When a card boosts another card
EVENT_TRIGGER_UNIT				=CARD_BRINGER_OF_GOOD_LUCK_EPONA	--Trigger Check
--Hint
--Message displayed in the center of the screen
HINT_EVENT				=1	--(unused)
HINT_MESSAGE			=2	--Display a string
HINT_SELECTMSG			=3	--Display a selection message
HINT_OPSELECTED			=4	--Display the selected effect
HINT_EFFECT				=5	--(unused)
HINT_RACE				=6	--(unused)
HINT_ATTRIB				=7	--(unused)
HINT_CODE				=8	--(unused)
HINT_NUMBER				=9	--Display the numerical value selected by the effect
HINT_CARD				=10	--Display the card name selected by the effect
HINT_ZONE				=11	--(unused, not available in YGOPro Percy)
--Card Hint
--Message displayed in the white frame that appears when you place the cursor on the card
CHINT_TURN				=1	--(unused)
CHINT_CARD				=2	--(unused)
CHINT_RACE				=3	--(unused)
CHINT_ATTRIBUTE			=4	--(unused)
CHINT_NUMBER			=5	--(unused)
CHINT_DESC				=6	--(unused)
--Opcode
OPCODE_ADD				=0x40000000		--(unused)
OPCODE_SUB				=0x40000001		--(unused)
OPCODE_MUL				=0x40000002		--(unused)
OPCODE_DIV				=0x40000003		--(unused)
OPCODE_AND				=0x40000004		--(unused)
OPCODE_OR				=0x40000005		--(unused)
OPCODE_NEG				=0x40000006		--(unused)
OPCODE_NOT				=0x40000007		--(unused)
OPCODE_ISCODE			=0x40000100		--(unused)
OPCODE_ISSETCARD		=0x40000101		--(unused)
OPCODE_ISTYPE			=0x40000102		--(unused)
OPCODE_ISRACE			=0x40000103		--(unused)
OPCODE_ISATTRIBUTE		=0x40000104		--(unused)
--Damage
DOUBLE_DAMAGE			=0x80000000		--(unused, not available in YGOPro Percy)
HALF_DAMAGE				=0x80000001		--(unused, not available in YGOPro Percy)
--Hint Message
--Message displayed at the top of the screen
HINTMSG_TOVCIRCLE		=500	--Select a card to put on your Vanguard Circle.
HINTMSG_DISCARD			=501	--Select a card to discard.
HINTMSG_EXCHANGE		=502	--Select a card to exchange.
HINTMSG_RIDE			=503	--Select a card to Ride.
HINTMSG_RETIRE			=504	--Select a card to Retire.
HINTMSG_TOGCIRCLE		=505	--Select a card to put on your Guardian Circle.
HINTMSG_TOCIRCLE		=506	--Select a circle to move to.
HINTMSG_GAINPOWER		=507	--Select a card to gain Power.
HINTMSG_DROP			=508	--Select a card to put into the Drop Zone.
HINTMSG_STAND			=509	--Select a card to [Stand].
HINTMSG_FLIPOVER		=510	--Select a card to flip over.
HINTMSG_ATOHAND			=511	--Select a card to add to your hand.
--Information displayed in a dialog box
ERROR_DECKCOUNT			=1450	--Your deck must be exactly 50 cards!
ERROR_TRIGGERCOUNT		=1451	--Your deck must have exactly 16 trigger units!
ERROR_HEALCOUNT			=1452	--You cannot include more than 4 trigger units with [Heal] in your deck!
ERROR_NOTARGETS			=1630	--There is no applicable card.
--Yes No Message (for Duel.SelectYesNo)
YESNOMSG_RETIRE			=600	--Retire a card?
--Option (for Duel.SelectOption)
OPTION_HEADS			=60		--(unused)
OPTION_TAILS			=61		--(unused)
OPTION_CALLFRONT		=1190	--Call to front Rear-Guard Circle.
OPTION_CALLBACK			=1191	--Call to back Rear-Guard Circle.
--Description (for SetDescription, EFFECT_FLAG_CLIENT_HINT)
DESC_REST				=111	--[Rest]
DESC_CALL				=1152	--Call
DESC_MOVE				=1170	--Move
DESC_STAND_UP			=1650	--Stand Up!!
DESC_STAND_PHASE		=1651	--Stand & Draw
DESC_RIDE_PHASE			=1652	--Ride Phase
DESC_ATTACK_STEP		=1653	--(reserved) Attack Step
DESC_GUARD_STEP			=1654	--Guard Step
DESC_DRIVE_STEP			=1655	--(reserved) Drive Step
DESC_INTERCEPT			=1660	--Intercept
DESC_BOOST				=1661	--Boost
DESC_CRITICAL_TRIGGER	=1662	--Critical Trigger
DESC_HEAL_TRIGGER		=1663	--Heal Trigger
DESC_DRAW_TRIGGER		=1664	--Draw Trigger
DESC_STAND_TRIGGER		=1665	--Stand Trigger
--Timing
--Free Chain activation timing
TIMING_DRAW_PHASE			=0x1		--(unused)
TIMING_STANDBY_PHASE		=0x2		--(unused)
TIMING_MAIN_END				=0x4		--(unused)
TIMING_BATTLE_START			=0x8		--(unused)
TIMING_BATTLE_END			=0x10		--(unused)
TIMING_END_PHASE			=0x20		--(unused)
TIMING_SUMMON				=0x40		--(unused)
TIMING_SPSUMMON				=0x80		--(unused)
TIMING_FLIPSUMMON			=0x100		--(unused)
TIMING_MSET					=0x200		--(unused)
TIMING_SSET					=0x400		--(unused)
TIMING_POS_CHANGE			=0x800		--(unused)
TIMING_ATTACK				=0x1000		--(unused)
TIMING_DAMAGE_STEP			=0x2000		--(unused)
TIMING_DAMAGE_CAL			=0x4000		--(unused)
TIMING_CHAIN_END			=0x8000		--(unused)
TIMING_DRAW					=0x10000	--(unused)
TIMING_DAMAGE				=0x20000	--(unused)
TIMING_RECOVER				=0x40000	--(unused)
TIMING_DESTROY				=0x80000	--(unused)
TIMING_REMOVE				=0x100000	--(unused)
TIMING_TOHAND				=0x200000	--(unused)
TIMING_TODECK				=0x400000	--(unused)
TIMING_TOGRAVE				=0x800000	--(unused)
TIMING_BATTLE_PHASE			=0x1000000	--(unused)
TIMING_EQUIP				=0x2000000	--(unused)
TIMING_BATTLE_STEP_END		=0x4000000	--(unused)
--Timing combinations
TIMINGS_CHECK_MONSTER		=0x1c0		--(unused)
--Global Flag
--Special effect flag
GLOBALFLAG_DECK_REVERSE_CHECK	=0x1		--(unused)
GLOBALFLAG_BRAINWASHING_CHECK	=0x2		--(unused)
GLOBALFLAG_SCRAP_CHIMERA		=0x4		--(unused)
GLOBALFLAG_DELAYED_QUICKEFFECT	=0x8		--(N/A)
GLOBALFLAG_DETACH_EVENT			=0x10		--(unused)
GLOBALFLAG_MUST_BE_SMATERIAL	=0x20		--(unused)
GLOBALFLAG_SPSUMMON_COUNT		=0x40		--(unused)
GLOBALFLAG_XMAT_COUNT_LIMIT		=0x80		--(unused)
GLOBALFLAG_SELF_TOGRAVE			=0x100		--(unused)
GLOBALFLAG_SPSUMMON_ONCE		=0x200		--(unused)
GLOBALFLAG_TUNE_MAGICIAN		=0x400		--(unused)
--Effect Count Code
--Limit the number of effects that can be used
EFFECT_COUNT_CODE_OATH			=0x10000000	--(unused)
EFFECT_COUNT_CODE_DUEL			=0x20000000	--(unused)
EFFECT_COUNT_CODE_SINGLE		=0x1		--(unused)
--Duel Options
DUEL_TEST_MODE			=0x01	--Test mode (not currently available)
DUEL_ATTACK_FIRST_TURN	=0x02	--Can attack during the first turn (for puzzles)
DUEL_NO_CHAIN_HINT		=0x04	--(N/A)
DUEL_OBSOLETE_RULING	=0x08	--Use old rules
DUEL_PSEUDO_SHUFFLE		=0x10	--Do not shuffle Deck
DUEL_TAG_MODE			=0x20	--2v2
DUEL_SIMPLE_AI			=0x40	--Semi-automatic AI (for puzzles)
SPEED_DUEL				=0x80	--Speed Duel (only available in YGOPro Percy)
--Activity Counter
--global: 1-6 (binary: 5,6)
--custom: 1-5,7 (binary: 1-5)
ACTIVITY_SUMMON			=1		--(unused)
ACTIVITY_NORMALSUMMON	=2		--(unused)
ACTIVITY_SPSUMMON		=3		--(unused)
ACTIVITY_FLIPSUMMON		=4		--(unused)
ACTIVITY_ATTACK			=5		--(unused)
ACTIVITY_BATTLE_PHASE	=6		--(unused, not available in Duel.AddCustomActivityCounter)
ACTIVITY_CHAIN			=7		--Check if a card or effect was activated (only available in Duel.AddCustomActivityCounter)
--Announce Type
ANNOUNCE_CARD			=0x7	--(unused, only available in YGOPro Percy)
ANNOUNCE_CARD_FILTER	=0x8	--(unused, only available in YGOPro Percy)
