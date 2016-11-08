# -*- coding: utf-8 -*-
# language: zh-CN

功能: 订房
    掌上如家订房测试
    背景:       已安装掌上如家
        假如    手机已安装掌上如家
        当      用户启动掌上如家
        那么    掌上如家会出现
        #而且    掌上如家有“过夜房”
        #而且    掌上如家有“立即预订”
        #而且    掌上如家有“预订”
        #而且    掌上如家有“活动”
        #而且    掌上如家有“服务”
        #而且    掌上如家有“我的”
    
    @booking
    场景:       预订过夜房
#--------------主界面---------------------------------------#
###############关键词搜索界面#################################
        当      用户点击“关键词搜索”
        那么    掌上如家出现“关键词搜索”界面
        而且    掌上如家有“行政区”、“商圈”和“地铁”三个页面
        而且		“行政区”页面内有
    			| district	|
    			| 越秀区		|
    			| 海珠区		|
    			| 荔湾区		|
    			| 天河区		|
    			| 白云区		|
    			| 番禺区		|
    			| 花都区		|
    			| 增城区		|
    	
        当		用户点击“商圈”页面
    	那么		“商圈”页面内有
    			| area			|
    			| 白云国际会议中心	|
                | 白云山风景区    |
    			| 北京路步行街	|
    			| 东山口商圈		|
    			| 动物园			|
    			| 东晓南			|
    			| 芳村			|
    			| 岗顶			|
    			#| 广东省博物馆    |
                #| 广东外语外贸大学  |
        
        当      用户点击“地铁”页面
        那么    “地铁”页面内有
                | subway        |
                | 地铁1号线        |
                | 地铁2号线        |
                | 地铁3号线        |
                | 地铁5号线        |
                | 地铁6号线        |
                | 地铁8号线        |
        当      用户点击“地铁3号线”
##########################################################
        那么    “过夜房”页面有“地铁3号线”条件
        当      用户点击“入住”日期
###############选择入住时间界面################################
        那么    掌上如家跳转到选择入住时间界面
        而且    页面有“可选择90天内日期”提示
        而且    页面有“完成”按键
        当      用户点击入住日期为“明天”
        那么    入住日期显示为“明天”
        当      用户点击离店日期为“后天”
##########################################################
        那么    掌上如家显示“过夜房”页面
        而且    “过夜房”页面显示为“明天”入住，“后天”离店
        当      用户点击“品牌筛选”
        那么    掌上如家出现“品牌”界面
        而且    “品牌”界面内有
                | brand         |
                | 全部品牌        |
                | 和颐至尊酒店      |
                | 和颐酒店        |
                | 如家精选酒店     |
                | 素柏·云酒店      |
                | 驿居酒店        |
        当      用户点击“全部品牌”
        当      用户点击“完成”
        那么    掌上如家跳转到“过夜房”页面
        当      用户点击“立即预订”
#--------------选择酒店界面----------------------------------#
        那么    掌上如家跳转到选择酒店界面
        而且    页面有“排序”按键
        而且    页面有“品牌”按键
        而且    页面有“筛选”按键
        当      用户点击“品牌”
        那么    “品牌”页面内有
                | brand          |
                | 全部品牌        |
                | 和颐至尊酒店     |
                | 和颐酒店        |
                | 如家精选酒店     |
        当      用户点击“完成”
        当      用户点击“筛选”
        那么    “筛选”页面内有
                | filter        |
                | 只显示新店      |
                | 可使用积分兑换   |
                | 可使用优惠券    |
        当      用户点击“完成”
        当      用户点击“排序”
        那么    “排序”页面内有
                | sort       |
                | 距离从近到远 |
                | 推荐        |
                | 价格从低到高 |
                | 价格从高到低 |
        当      用户点击“推荐”
        当      用户点击“查看地图”
###############选地图选房界面################################
        那么    掌上如家跳转到地图选择酒店界面
        当      用户点击左上角返回按钮
##########################################################
        当      用户选择第一个酒店
#--------------选房预订界面------------------------------------#
        那么    掌上如家跳转到选房预订界面
        当      用户点击收藏
        当      用户点击酒店详情
###############酒店详情界面################################
        那么    掌上如家跳转到“酒店详情”界面
        当      用户点击分享酒店
        那么    掌上如家出现“分享酒店”界面
        当      用户点击“完成”
        当      用户点击左上角返回按钮
        当      用户点击酒店地址
###############导航界面################################
        那么    掌上如家跳转到“导航”界面
        当      用户点击左上角返回按钮
##########################################################
        当      用户点击电话按钮
        当      用户点击左上角返回按钮
##########################################################
        当      用户点击入店和离店时间
        那么    选房预订界面出现“选择入住时间”界面
        当      用户点击“完成”按钮
        当      用户上划屏幕查看房型直到酒店房型有“标准双床房”
        那么    “标准双床房”上划到屏幕最顶
        假如    “标准双床房”有“会员价”房间
        当      用户点击“会员价”右边的“预订”按钮
#--------------填写订单界面-----------------------------------#
        那么    掌上如家跳转到“填写订单”界面
		#那么     检查酒店
        当      用户点击添加酒店天数
		当      用户点击减少酒店天数
		当      用户点击“常住联系人”
###############常住联系人界面################################
		那么    掌上如家出现“常住联系人”界面
		当      用户点击“通讯录选择”
        当      用户点击左上角返回按钮
##########################################################
		当      用户点击联系人

		那么    掌上如家出现“填写订单”界面

		当      用户点击商城券说明
		那么    掌上如家出现“优选商城券”界面
		当      用户点击“好的”
		当      用户点击添加商城券
		当      用户点击减少商城券

		当      用户点击信用住说明 
		那么    掌上如家出现“阿里旅行信用住”界面
		当      用户点击“好的”
		当      用户点击信用住
###############阿里旅行信用住使用须知界面################################
		那么    掌上如家出现“阿里旅行信用住使用须知”界面
        当      用户点击左上角返回按钮
##########################################################

		那么    填写订单页面向下滑动

        假如    用户有可用电子券
		当      用户点击电子券
###############优惠券界面################################
        那么    掌上如家出现选择优惠券界面
        当      用户点击“确认选择”
##########################################################
		那么    掌上如家返回“填写订单”界面

		当      用户点击积分加速计划说明
		那么    掌上如家出现“积分加速”界面
		当      用户点击“好的”
		当      用户点击积分加速计划


		当      用户点击出行目的
		那么    掌上如家出现“选择出行目的”界面
		那么    “选择出行目的”页面内有
    			| target	|
    			| 商务    	|
    			| 旅游    	|
    			| 会议出行  	|
		当      用户点击“好的”

		当      用户点击发票
		那么    掌上如家出现“发票信息”界面
        当      用户点击左上角返回按钮

		当      用户点击“明细”
		那么    掌上如家出现“费用明细”界面
		当      用户点击“好的”
        
        
        #当      用户点击左上角返回按钮
        #那么    掌上如家提示“放弃这张订单吗？”
        #当      用户点击“放弃订单”
        
        #那么    掌上如家跳转到选房预订界面


        当      用户点击“提交订单”
###############订单支付界面################################
        那么    掌上如家出现“订单支付”界面
        当      用户点击“订单详情”
###############订单详情界面################################
        那么    掌上如家出现“订单详情”界面
        当      用户点击电话
        那么    掌上如家出现“拨打电话”页面
        当      用户点击“取消”
        当      用户点击“去酒店”
        那么    掌上如家出现“预约用车”页面
        当      用户点击“完成”

        假如    有“去选房”
        当      用户点击去选房
###############自助服务界面################################
        那么    掌上如家出现自助服务界面
        当      用户点击左上角返回按钮
###########################################################
        那么    掌上如家出现“订单详情”界面
        #当      用户点击左上角返回按钮
###########################################################
        那么    掌上如家出现“订单支付”界面
        当      用户点击支付宝支付
        当      用户点击微信支付
        当      用户点击如家钱包支付
        当      用户点击银行卡支付
        #当      用户点击立即支付
###########################################################  
      


###############取消订单################################
        当      用户点击左上角返回按钮
        那么    掌上如家提示“订单尚未支付，可在订单详情中重新进行支付，或入住时于酒店前台现付。”
        当      用户点击“返回首页”

##########################################################
        那么    掌上如家显示“过夜房”页面
        当      用户点击“我的”

        那么    掌上如家跳转到我的界面
        当      用户点击“我的订单”

        那么    掌上如家跳转到“我的订单”界面
        假如    有“预订成功”的订单
        当      用户点击以上订单

###############订单详情界面################################
        当      用户上划屏幕查看订单详情直到有“取消订单”
        当      用户点击“取消订单”
        那么    掌上如家提示“是否取消当前订单”
        当      用户点击“是”
        
    @cancel
    场景:       取消订单

##########################################################
        那么    掌上如家显示“过夜房”页面
        当      用户点击“我的”

        那么    掌上如家跳转到我的界面
        当      用户点击“我的订单”

        那么    掌上如家跳转到“我的订单”界面
        假如    有“预订成功”的订单
        当      用户点击以上订单

###############订单详情界面################################
        当      用户上划屏幕查看订单详情直到有“取消订单”
        当      用户点击“取消订单”
        那么    掌上如家提示“是否取消当前订单”
        当      用户点击“是”

                
    #@booking
    场景:       可以定位，立即预订过夜房并支付成功
#--------------主界面---------------------------------------#
        当      用户点击城市
###############城市选择界面################################
        那么    掌上如家出现“城市选择”界面
        而且    “当前位置”为“广州”
        当      用户点击左上角返回按钮
##########################################################
        那么    掌上如家跳转到“过夜房”页面
        当      用户点击“立即预订”
#--------------选择酒店界面----------------------------------#
        那么    掌上如家跳转到选择酒店界面
        而且    页面有“排序”按键
        而且    页面有“品牌”按键
        而且    页面有“筛选”按键
        当      用户选择第一个酒店
#--------------选房预订界面------------------------------------#
        那么    掌上如家跳转到选房预订界面
        当      用户点击入店和离店时间
###############城市选择界面################################
        那么    选房预订界面出现“选择入住时间”界面
        当      用户点击入住日期为“明天”
        那么    入住日期显示为“明天”
        当      用户点击离店日期为“后天”
##########################################################
        那么    酒店页面显示为“明天”入住，“后天”离店
        当      用户上划屏幕查看房型直到酒店房型有“标准双床房”
        那么    “标准双床房”上划到屏幕最顶
        假如    “标准双床房”有“会员价”房间
        当      用户点击“会员价”右边的“预订”按钮
#--------------填写订单界面-----------------------------------#
        那么    掌上如家跳转到“填写订单”界面
        当      用户点击“提交订单”
###############订单支付界面################################
        那么    掌上如家出现“订单支付”界面
        
###############取消订单################################
        当      用户点击左上角返回按钮
        那么    掌上如家提示“订单尚未支付，可在订单详情中重新进行支付，或入住时于酒店前台现付。”
        当      用户点击“返回首页”

##########################################################
        那么    掌上如家显示“过夜房”页面
        当      用户点击“我的”

        那么    掌上如家跳转到我的界面
        当      用户点击“我的订单”

        那么    掌上如家跳转到“我的订单”界面
        假如    有“预订成功”的订单
        当      用户点击以上订单

###############订单详情界面################################
        当      用户上划屏幕查看订单详情直到有“取消订单”
        当      用户点击“取消订单”
        那么    掌上如家提示“是否取消当前订单”
        当      用户点击“是”
        
    @booking
    场景:       不能定位，立即预订过夜房并支付成功
#--------------主界面---------------------------------------#
        当      用户点击城市
###############城市选择界面################################
        那么    掌上如家出现“城市选择”界面
        而且    “当前位置”为“定位失败”
        而且    “当前位置”为“广州”
        当      用户点击左上角返回按钮
##########################################################
        那么    掌上如家跳转到“过夜房”页面
        当      用户点击“立即预订”
#--------------选择酒店界面----------------------------------#
        那么    掌上如家跳转到选择酒店界面
        而且    页面有“排序”按键
        而且    页面有“品牌”按键
        而且    页面有“筛选”按键
        当      用户选择第一个酒店
#--------------选房预订界面------------------------------------#
        那么    掌上如家跳转到选房预订界面
        当      用户点击入店和离店时间
###############城市选择界面################################
        那么    选房预订界面出现“选择入住时间”界面
        当      用户点击入住日期为“明天”
        那么    入住日期显示为“明天”
        当      用户点击离店日期为“后天”
##########################################################
        那么    酒店页面显示为“明天”入住，“后天”离店
        当      用户上划屏幕查看房型直到酒店房型有“标准双床房”
        那么    “标准双床房”上划到屏幕最顶
        假如    “标准双床房”有“会员价”房间
        当      用户点击“会员价”右边的“预订”按钮
#--------------填写订单界面-----------------------------------#
        那么    掌上如家跳转到“填写订单”界面
        当      用户点击“提交订单”
###############订单支付界面################################
        那么    掌上如家出现“订单支付”界面
###############取消订单################################
        当      用户点击左上角返回按钮
        那么    掌上如家提示“订单尚未支付，可在订单详情中重新进行支付，或入住时于酒店前台现付。”
        当      用户点击“返回首页”

##########################################################
        那么    掌上如家显示“过夜房”页面
        当      用户点击“我的”

        那么    掌上如家跳转到我的界面
        当      用户点击“我的订单”

        那么    掌上如家跳转到“我的订单”界面
        假如    有“预订成功”的订单
        当      用户点击以上订单

###############订单详情界面################################
        当      用户上划屏幕查看订单详情直到有“取消订单”
        当      用户点击“取消订单”
        那么    掌上如家提示“是否取消当前订单”
        当      用户点击“是”

@booking, @dev
    场景:       立即预订过夜房并支付成功
#--------------主界面---------------------------------------#
        当      用户点击“立即预订”
#--------------选择酒店界面----------------------------------#
        那么    掌上如家跳转到选择酒店界面
        而且    页面有“排序”按键
        而且    页面有“品牌”按键
        而且    页面有“筛选”按键
        当      用户选择第一个酒店
#--------------选房预订界面------------------------------------#
        那么    掌上如家跳转到选房预订界面
        当      用户点击入店和离店时间
###############城市选择界面################################
        那么    选房预订界面出现“选择入住时间”界面
        当      用户点击入住日期为“90天后”
        那么    入住日期显示为“90天后”
        当      用户点击离店日期为“91天后”
##########################################################
        那么    酒店页面显示为“90天后”入住，“91天后”离店
        当      用户上划屏幕查看房型直到酒店房型有“标准双床房”
        那么    “标准双床房”上划到屏幕最顶
        假如    “标准双床房”有“会员价”房间
        当      用户点击“会员价”右边的“预订”按钮
#--------------填写订单界面-----------------------------------#
        那么    掌上如家跳转到“填写订单”界面
        当      用户点击“提交订单”
###############订单支付界面################################
        那么    掌上如家出现“订单支付”界面

###############取消订单################################
        当      用户点击左上角返回按钮
        那么    掌上如家提示“订单尚未支付，可在订单详情中重新进行支付，或入住时于酒店前台现付。”
        当      用户点击“返回首页”

##########################################################
        那么    掌上如家显示“过夜房”页面
        当      用户点击“我的”

        那么    掌上如家跳转到我的界面
        当      用户点击“我的订单”

        那么    掌上如家跳转到“我的订单”界面
        假如    有“预订成功”的订单
        当      用户点击以上订单

###############订单详情界面################################
        当      用户上划屏幕查看订单详情直到有“取消订单”
        当      用户点击“取消订单”
        那么    掌上如家提示“是否取消当前订单”
        当      用户点击“是”
    
    #@booking
    场景:       搜索酒店预订过夜房
        当      用户点击“关键词搜索”
        那么    掌上如家出现“关键词搜索”界面
        而且    掌上如家有“行政区”、“商圈”和“地铁”三个页面
        而且    “行政区”页面内有
                | district    |
            	| 越秀区        |
            	| 海珠区        |
            	| 荔湾区        |
            	| 天河区        |
            	| 白云区        |
            	| 番禺区        |
            	| 花都区        |
            	| 增城区        |
        当      用户点击“搜索酒店，地点”
        而且    用户输入“琶洲地铁站店”
        那么    掌上如家关键词搜索列表显示“广州琶洲会展中心琶洲地铁站店”
        当      用户点击搜索列表中“广州琶洲会展中心琶洲地铁站店”
        #那么    掌上如家跳转到选房预订界面
        #当      用户上划屏幕查看房型直到酒店房型有“特惠双床房”
        #那么    “特惠双床房”上划到屏幕最顶
        #假如    “特惠双床房”有“会员价”房间
        #当      用户点击“会员价”右边的“预订”按钮
        #那么    掌上如家跳转到“填写订单”页面
        #当      用户点击左上角返回按钮
        #那么    掌上如家提示“放弃这张订单吗?”
        #当      用户点击“放弃订单”
        #那么    掌上如家跳转到选房预订界面

    #@booking, @hotel
    场景:       搜索酒店预订过夜房
        当      用户点击“立即预订”
        那么    掌上如家跳转到选择酒店界面
        当      用户选择“如家-广州黄埔大道中天河区政府店”
        那么    掌上如家跳转到选房预订界面

    #@booking
    场景:       搜索酒店，使用会员价预订标准双床房的过夜房
        当      用户点击“关键词搜索”
        那么    掌上如家出现“关键词搜索”界面
        而且    掌上如家有“行政区”、“商圈”和“地铁”三个页面
        而且    “行政区”页面内有
                | district    |
                | 越秀区        |
                | 海珠区        |
                | 荔湾区        |
                | 天河区        |
                | 白云区        |
                | 番禺区        |
                | 花都区        |
                | 增城区        |
        当      用户点击“搜索酒店，地点”
        而且    用户输入“琶洲地铁站店”
        那么    掌上如家关键词搜索列表显示“广州琶洲会展中心琶洲地铁站店”
        当      用户点击搜索列表中“广州琶洲会展中心琶洲地铁站店”
        那么    掌上如家跳转到选房预订界面
        当      用户上划屏幕查看房型直到酒店房型有“标准双床房”
        那么    “标准双床房”上划到屏幕最顶
        假如    “标准双床房”有“会员价”房间
        当      用户点击“会员价”右边的“预订”按钮
        那么    掌上如家跳转到“填写订单”页面
        当      用户点击左上角返回按钮
        那么    掌上如家提示“放弃这张订单吗?”
        当      用户点击“放弃订单”
        那么    掌上如家跳转到选房预订界面

    #@booking
    场景:       搜索酒店，使用会员价预订大床房的过夜房
        当      用户点击“关键词搜索”
        那么    掌上如家出现“关键词搜索”界面
        而且    掌上如家有“行政区”、“商圈”和“地铁”三个页面
        而且    “行政区”页面内有
                | district    |
                | 越秀区        |
                | 海珠区        |
                | 荔湾区        |
                | 天河区        |
                | 白云区        |
                | 番禺区        |
                | 花都区        |
                | 增城区        |
        当      用户点击“搜索酒店，地点”
        而且    用户输入“琶洲地铁站店”
        那么    掌上如家关键词搜索列表显示“广州琶洲会展中心琶洲地铁站店”
        当      用户点击搜索列表中“广州琶洲会展中心琶洲地铁站店”
        那么    掌上如家跳转到选房预订界面
        当      用户上划屏幕查看房型直到酒店房型有“大床房”
        那么    “大床房”上划到屏幕最顶
        假如    “大床房”有“会员价”房间
        当      用户点击“会员价”右边的“预订”按钮
        那么    掌上如家跳转到“填写订单”页面
        当      用户点击左上角返回按钮
        那么    掌上如家提示“放弃这张订单吗?”
        当      用户点击“放弃订单”
        那么    掌上如家跳转到选房预订界面

    #@booking
    场景:       搜索酒店，使用会员价预订商务大床房的过夜房
        当      用户点击“关键词搜索”
        那么    掌上如家出现“关键词搜索”界面
        而且    掌上如家有“行政区”、“商圈”和“地铁”三个页面
        而且    “行政区”页面内有
                | district    |
                | 越秀区        |
                | 海珠区        |
                | 荔湾区        |
                | 天河区        |
                | 白云区        |
                | 番禺区        |
                | 花都区        |
                | 增城区        |
        当      用户点击“搜索酒店，地点”
        而且    用户输入“琶洲地铁站店”
        那么    掌上如家关键词搜索列表显示“广州琶洲会展中心琶洲地铁站店”
        当      用户点击搜索列表中“广州琶洲会展中心琶洲地铁站店”
        那么    掌上如家跳转到选房预订界面
        当      用户上划屏幕查看房型直到酒店房型有“商务大床房”
        那么    “商务大床房”上划到屏幕最顶
        假如    “商务大床房”有“会员价”房间
        当      用户点击“会员价”右边的“预订”按钮
        那么    掌上如家跳转到“填写订单”页面
        当      用户点击左上角返回按钮
        那么    掌上如家提示“放弃这张订单吗?”
        当      用户点击“放弃订单”
        那么    掌上如家跳转到选房预订界面

    #@booking
    场景:       搜索酒店，使用会员价预订特惠双床房的过夜房
        当      用户点击“关键词搜索”
        那么    掌上如家出现“关键词搜索”界面
        而且    掌上如家有“行政区”、“商圈”和“地铁”三个页面
        而且    “行政区”页面内有
                | district    |
                | 越秀区        |
                | 海珠区        |
                | 荔湾区        |
                | 天河区        |
                | 白云区        |
                | 番禺区        |
                | 花都区        |
                | 增城区        |
        当      用户点击“搜索酒店，地点”
        而且    用户输入“琶洲地铁站店”
        那么    掌上如家关键词搜索列表显示“广州琶洲会展中心琶洲地铁站店”
        当      用户点击搜索列表中“广州琶洲会展中心琶洲地铁站店”
        那么    掌上如家跳转到选房预订界面
        当      用户上划屏幕查看房型直到酒店房型有“特惠双床房”
        那么    “特惠双床房”上划到屏幕最顶
        假如    “特惠双床房”有“会员价”房间
        当      用户点击“会员价”右边的“预订”按钮
        那么    掌上如家跳转到“填写订单”页面
        当      用户点击左上角返回按钮
        那么    掌上如家提示“放弃这张订单吗?”
        当      用户点击“放弃订单”
        那么    掌上如家跳转到选房预订界面

    #@booking
    场景:   搜索酒店，使用会员价预订特惠大床房的过夜房
        当      用户点击“关键词搜索”
        那么    掌上如家出现“关键词搜索”界面
        而且    掌上如家有“行政区”、“商圈”和“地铁”三个页面
        而且    “行政区”页面内有
                | district    |
                | 越秀区        |
                | 海珠区        |
                | 荔湾区        |
                | 天河区        |
                | 白云区        |
                | 番禺区        |
                | 花都区        |
                | 增城区        |
        当      用户点击“搜索酒店，地点”
        而且    用户输入“琶洲地铁站店”
        那么    掌上如家关键词搜索列表显示“广州琶洲会展中心琶洲地铁站店”
        当      用户点击搜索列表中“广州琶洲会展中心琶洲地铁站店”
        那么    掌上如家跳转到选房预订界面
        当      用户上划屏幕查看房型直到酒店房型有“特惠大床房”
        那么    “特惠大床房”上划到屏幕最顶
        假如    “特惠大床房”有“会员价”房间
        当      用户点击“会员价”右边的“预订”按钮
        那么    掌上如家跳转到“填写订单”页面
        当      用户点击左上角返回按钮
        那么    掌上如家提示“放弃这张订单吗?”
        当      用户点击“放弃订单”
        那么    掌上如家跳转到选房预订界面

    #@booking
    场景:       搜索酒店，使用会员价预订特惠商务房的过夜房
        当      用户点击“关键词搜索”
        那么    掌上如家出现“关键词搜索”界面
        而且    掌上如家有“行政区”、“商圈”和“地铁”三个页面
        而且    “行政区”页面内有
                | district    |
                | 越秀区        |
                | 海珠区        |
                | 荔湾区        |
                | 天河区        |
                | 白云区        |
                | 番禺区        |
                | 花都区        |
                | 增城区        |
        当      用户点击“搜索酒店，地点”
        而且    用户输入“琶洲地铁站店”
        那么    掌上如家关键词搜索列表显示“广州琶洲会展中心琶洲地铁站店”
        当      用户点击搜索列表中“广州琶洲会展中心琶洲地铁站店”
        那么    掌上如家跳转到选房预订界面
        当      用户上划屏幕查看房型直到酒店房型有“特惠商务房”
        那么    “特惠商务房”上划到屏幕最顶
        假如    “特惠商务房”有“会员价”房间
        当      用户点击“会员价”右边的“预订”按钮
        那么    掌上如家跳转到“填写订单”页面
        当      用户点击左上角返回按钮
        那么    掌上如家提示“放弃这张订单吗?”
        当      用户点击“放弃订单”
        那么    掌上如家跳转到选房预订界面

    #@booking
    场景:       搜索酒店，使用暑期专享价预订商务大床房的过夜房
        当      用户点击“关键词搜索”
        那么    掌上如家出现“关键词搜索”界面
        而且    掌上如家有“行政区”、“商圈”和“地铁”三个页面
        而且    “行政区”页面内有
                | district    |
                | 越秀区        |
                | 海珠区        |
                | 荔湾区        |
                | 天河区        |
                | 白云区        |
                | 番禺区        |
                | 花都区        |
                | 增城区        |
        当      用户点击“搜索酒店，地点”
        而且    用户输入“琶洲地铁站店”
        那么    掌上如家关键词搜索列表显示“广州琶洲会展中心琶洲地铁站店”
        当      用户点击搜索列表中“广州琶洲会展中心琶洲地铁站店”
        那么    掌上如家跳转到选房预订界面
        当      用户上划屏幕查看房型直到酒店房型有“商务大床房”
        那么    “商务大床房”上划到屏幕最顶
        假如    “商务大床房”有“暑期专享”房间
        当      用户点击“暑期专享”右边的“预订”按钮
        那么    掌上如家跳转到“填写订单”页面
        当      用户点击左上角返回按钮
        那么    掌上如家提示“放弃这张订单吗?”
        当      用户点击“放弃订单”
        那么    掌上如家跳转到选房预订界面


    #@booking
    #场景:      预订时租房
        #假如   当前时间在8点到16点之间

    #@booking
    #场景:      预订限时优惠房
        #假如   当前时间在早于8点或晚于16点