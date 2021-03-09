admin = User.create!(
  phone: "admin",
  name: "物业管家",
  password: "password",
  password_confirmation: "password",
  is_manager: true,
  auth_info: "片区管家",
  is_authorized: true
)

user1 = User.create!(
  phone: "12345678-1",
  name: "关生",
  password: "password",
  password_confirmation: "password",
  auth_info: "03区12幢302",
  is_authorized: true
)

user2 = User.create!(
  phone: "12345678-2",
  name: "李女士",
  password: "password",
  password_confirmation: "password",
  auth_info: "03区2幢1302",
  is_authorized: true
)

user3 = User.create!(
  phone: "12345678-3",
  name: "王生",
  password: "password",
  password_confirmation: "password",
  auth_info: "03区1幢1101",
  is_authorized: true
)

user4 = User.create!(
  phone: "12345678-4",
  name: "张生",
  password: "password",
  password_confirmation: "password",
  auth_info: "02区11幢302"
)

user5 = User.create!(
  phone: "12345678-5",
  name: "蔡生",
  password: "password",
  password_confirmation: "password",
  auth_info: "02区13幢302"
)


user6 = User.create!(
  phone: "12345678-6",
  name: "汤女士",
  password: "password",
  password_confirmation: "password",
  auth_info: "01区1幢1002"
)


Announcement.create!(
  title: "小区关于办理业主卡的通知",
  content: "你们好!现本小区已进入装修阶段,进出小区人员日益增多,管理处为加强小区人员进出管理,确保苑区的安全和谐,须对苑区住户办理业主卡,住户须凭业主卡进出小区。请业主于近期内到管理处办理,谢谢合作!"
)
Announcement.create!(
  title: "关于灭鼠的通知",
  content: "您好,春天临近,为了防止小区出现鼠患,我管理处将从**年**月**日起到**年**月**日,每天**:**在小区内的草坪等公共区域内投放鼠药,次日**:**收药。请各位业主/住户在此期间注意安全,特别是一定要看管好自己的小孩,家中有宠物业主/住户也要照顾好自己的宠物,以免其误食。谢谢合作!"
)
Announcement.create!(
  title: "关于变更24小时服务电话的温馨提示",
  content: "因公司管理需要,即日起我管理处原24小时物业服务电话:0***-*******停止使用,同时启用新的24小时服务电话:0***-*******。如您需要帮助和服务请拨打更改后的电话号码,由此给您带来的不便敬请谅解!"
)
Announcement.create!(
  title: "关于缴纳各项费用的通知",
  content: "**年**月的公摊电费、二次供水水费已经核算完毕,请各位业主/住户在**月**日之前到管理处缴纳。同时现在开始收取**年**月—**年**月的物业管理费,请大家到管理处来缴纳。如您在此期间来管理处缴费用有困难,请务必和管理处联系协商解决,联系电话:*******。谢谢您的合作!"
)
Announcement.create!(
  title: "关于举行消防演习的通知",
  content: "根据上级机关文件指示精神,保障小区设施设备及业主人身、财产的安全;为增强我管理区域护卫人员素质及全体员工的消防意识,提高员工抗御初期火灾的能力,我管理处特定于****年**月**日在本小区停车场举行消防演习,欢迎各位业主/住户到场观摩。"
)
Announcement.create!(
  title: "关于小区停水的通知",
  content: "由于小区管网维修,本小区将在**年**月**日**:**—**:**停水,请各位业主及住户提前做好储水储备,由此给您带来的不便,敬请谅解,谢谢合作!"
)
Announcement.create!(
  title: "关于机动车停车卡使用办法的通知",
  content: "为了能对小区内的机动车实行规范化的管理,我管理处提醒各位车主:如果您办了月租,那您手中的月卡就是凭证,请在进出大门时候一定要交给护卫查验。如不能出示月卡,那只能视为临停收费。同时,如果您的月租到期了,请及时到管理处办理手续,逾期未办理手续的车辆,当您进出小区时我们将按临停收费。护卫在您进小区时将给您开具“进出凭条”,此条是您车辆进出小区的重要凭证,因此请车主保管好该凭条。如果您不小心遗失了,为了您的车辆安全,请及时通知管理处,并到管理处办理遗失手续。我管理处将严格按照此规定检查月卡和凭条,由此给您带来的不便,深表歉意,谢谢您的合作!"
)


topic1 = user1.topics.create!(category: "租售相关", title: "有03区的车位出租吗？", content: "最好是靠近4幢电梯口。")
topic1.replies.create!(user: user2, content: "2幢附近可以么，离4幢不是很远，价格好谈。")
topic1.replies.create!(user: user4, content: "我有一个在1幢的，200块一个月包物业费，有需要联系我。")

topic4 = user3.topics.create!(category: "二手闲置", title: "售卖家里的雅马哈U5H钢琴，有邻居需要么？", content: "孩子出国了，很少在家里弹，不过我每年都按时保养，钢琴音色很好听，外观保存也很好。有需要的联系 1501749182X")
topic4.replies.create!(user: user2, content: "用了多少年的？")

topic2 = user2.topics.create!(category: "租售相关", title: "07区两房出租", content: "要求爱干净，长租价格好谈。")
topic2.replies.create!(user: user1, content: "多少钱一个月？可以养狗么？")
topic2.replies.create!(user: user2, content: "1500包管理费，可以养狗，但是要注意搞清洁")
topic2.replies.create!(user: user2, content: "已经租出去了。")

topic3 = user4.topics.create!(category: "社区求助", title: "各位邻居有搞卫生的阿姨推荐么？", content: "最好是住在附近，手脚勤快的，想请一个阿姨固定每周上门搞卫生，谢谢。")
topic3.replies.create!(user: user1, content: "我家卫生那个阿姨不错，你联系一下说是张老师推荐的（李姨1342342084X）")
topic3.replies.create!(user: user2, content: "我是在附近家政找的，感觉还可以，你找不到合适的可以去试试")

topic5 = user2.topics.create!(category: "二手闲置", title: "闲置跑步机出售", content: "9成新，买回来没用过几次，600块转，电话 1592317649X")
topic5.replies.create!(user: user3, content: "这东西能放多少件衣服？")


st1 = user1.topics.create!(category: "投诉建议", title: "能否在小区内规划电动车充电区？", content: "经常看到有人把电动车推到电梯带上楼充电，有一定的安全隐患。")
st1.replies.create!(user: admin, content: "业委会已经讨论过该话题，目前正在选址，请留意后续公示。")
st2 = user1.topics.create!(category: "物业报修", title: "12幢大堂的楼梯灯坏了", content: "")

st3 = user2.topics.create!(category: "物业报修", title: "3幢的施工电梯经常坏", content: "麻烦请电梯公司的人上门进行全面检查下。")
st3.replies.create!(user: admin, content: "已经向工程组提交申请，请留意后续通知。")
st4 = user2.topics.create!(category: "投诉建议", title: "能否增加小区垃圾清运次数？", content: "平时晚上跑步的时候经常看到垃圾桶的垃圾满出来了，影响小区的环境风貌。")

st5 = user3.topics.create!(category: "投诉建议", title: "能否晚上安排人员巡视湖边？", content: "最近晚上都有人到那边放烟花，影响小孩休息。")
