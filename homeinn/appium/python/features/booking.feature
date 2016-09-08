# -*- coding: utf-8 -*-
# language: zh-CN

功能: 订房
    掌上如家订房测试
	背景:	已安装掌上如家
    	假如		手机已安装掌上如家
    	当		用户启动掌上如家
		那么		掌上如家会出现
	
	@booking	
    场景:	预订过夜房
		#当		用户点击城市
		#那么		掌上如家出现“城市选择”界面
		#假如		“当前位置”为“广州”
		#当		用户点击以上的“广州”
		#那么		掌上如家跳转到“过夜房”页面
		#而且		城市显示为“广州”
		#当		用户点击“关键词搜索”
		#那么		掌上如家出现“关键词搜索”界面
		#而且		掌上如家有“行政区”、“商圈”和“地铁”三个页面
		#而且		“行政区”页面内有
			| district	|
			| 越秀区		|
			| 海珠区		|
			| 荔湾区		|
			| 天河区		|
			| 白云区		|
			| 番禺区		|
			| 花都区		|
			| 增城区		|
		#当		用户点击“商圈”页面
		#那么		“商圈”页面内有
			| area			|
			| 白云国际会议中心	|
			| 白云山风景区	|
			| 东山口商圈		|
			| 动物园			|
			| 东晓南			|
			| 芳村			|
			| 岗顶			|
			| 广东省博物馆	|
		#当		用户点击“地铁”页面
		#那么		“地铁”页面内有
			| subway		|
			| 地铁1号线		|
			| 地铁2号线		|
			| 地铁3号线		|
			| 地铁5号线		|
			| 地铁6号线		|
			| 地铁8号线		|
		#当		用户点击“地铁8号线”
		#那么		“过夜房”页面有“地铁8号线”条件
		当		用户点击“入住”日期
		那么		掌上如家跳转到“选择入住时间”界面
		而且		页面有“可选择90天内日期”提示
		而且		页面有“完成”按键
		当		用户点击入住日期为“明天”
		那么		入住日期显示为“明天”
		当		用户点击离店日期为“后天”
		那么		掌上如家跳转到“过夜房”页面
		而且		“过夜房”页面显示为“明天”入住，“后天”离店
		
	
	@booking
	#场景:	预订时租房
		#假如	当前时间在8点到16点之间
	
	@booking
	#场景:	预订限时优惠房
		#假如	当前时间在早于8点或晚于16点