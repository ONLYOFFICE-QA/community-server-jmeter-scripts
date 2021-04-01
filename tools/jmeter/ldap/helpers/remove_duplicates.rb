#!/usr/bin/env ruby
# ugly script - generating LDAP users for load testing
# TODO: refactor to make reusable

text = File.open('text.txt').read
text.gsub!(/\r\n?/, "\n")

big_bad_str = ''
text.each_line do |line|
  # print "#{line_num += 1} #{line}"
  big_bad_str += line
end

non_valid = [
  'uid: CzebanM',
  'uid: NoahM',
  'uid: HislopL',
  'uid: BarkhouS',
  'uid: SrikrisE',
  'uid: PanchenM',
  'uid: MecherJ',
  'uid: SiehlM',
  'uid: YeckS',
  'uid: KosterM',
  'uid: StasyszM',
  'uid: ThomlinC',
  'uid: DayberrF',
  'uid: BastaraS',
  'uid: BetterlS',
  'uid: ReceiviD',
  'uid: GurerM',
  'uid: DeforeiL',
  'uid: KajeejiD',
  'uid: ZatkoviY',
  'uid: MaguireA',
  'uid: PlaisanK',
  'uid: DysartD',
  'uid: ScanlanM',
  'uid: DysonC',
  'uid: SpearpoR',
  'uid: PaoneM',
  'uid: OnsitetA',
  'uid: LarinH',
  'uid: GalvinD',
  'uid: VernonD',
  'uid: RobersoC',
  'uid: Blanco-L',
  'uid: SiztoM',
  'uid: HenglG',
  'uid: BarszczR',
  'uid: MerwortS',
  'uid: FarnswoS',
  'uid: ManusJ',
  'uid: Rishy-MM',
  'uid: FASTONEC',
  'uid: BuntingD',
  'uid: MacGregG',
  'uid: PendergM',
  'uid: BauerD',
  'uid: FroncekH',
  'uid: RidleyL',
  'uid: MahaffeS',
  'uid: SarubbiJ',
  'uid: LawlerB',
  'uid: Bruner-B',
  'uid: NovakA',
  'uid: JanaratD',
  'uid: DraytonJ',
  'uid: SiehlM',
  'uid: RobsonM',
  'uid: FranzeV',
  'uid: RomeroV',
  'uid: MyrickL'
]

arr = big_bad_str.split("\n\n")

non_valid.each do |bad_value|
  i = arr.find_index { |item| item.include? bad_value }
  arr.delete_at i if i
end

big_big_bad_str = arr.join("\n\n")

File.open('final.txt', 'w') do |f|
  f << big_big_bad_str
end
