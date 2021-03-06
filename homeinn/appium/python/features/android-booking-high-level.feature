# -*- coding: utf-8 -*-
# language: zh-CN

功能: 订房
    掌上如家订房测试
    背景:       已安装掌上如家
        假如    手机已安装掌上如家
        
        假如    手机当前运行应用不为掌上如家
        当      用户启动掌上如家
#--------------启动界面---------------------------------------#
        那么    掌上如家会出现  
#--------------介绍界面---------------------------------------#
        假如    掌上如家是新版本安装后第一次启动
        当      用户左划屏幕直到出现“立即体验”并点击“立即体验”
        
        假如    掌上如家当前界面不为首页
        当      用户按返回直到有“预订”页面可点击
        当      用户点击“预订”
#--------------主界面---------------------------------------#

        假如    用户尚未登录掌上如家
#--------------我的界面---------------------------------------#
        当      用户输入账号密码
        那么    用户已经登录掌上如家
        当      用户点击“预订”
		那么		掌上如家显示“过夜房”页面
        当      用户点击“过夜房”
        那么    掌上如家的“过夜房”为可用
        而且    掌上如家有“离店”控件
        
#--------------主界面---------------------------------------#
        假如    掌上如家“过夜房”页面显示不为“14天后”入住，“15天后”离店
        当      用户执行修改入住日期为“14天后”，离店日期为“15天后”等一系列动作

        那么    掌上如家显示“过夜房”页面
        而且    掌上如家“过夜房”页面显示为“14天后”入住，“15天后”离店

    @booking-high-level #pass #shortest booking path
    场景:可以定位，立即预订过夜房并支付成功
#--------------主界面---------------------------------------#
        当      用户点击城市
###############城市选择界面################################
        那么    掌上如家出现“城市选择”界面
        而且    掌上如家“当前位置”不为“定位失败”
        当      用户点击左上角返回按钮
##########################################################
        那么    掌上如家跳转到“过夜房”页面
        当      用户点击“立即预订”
#--------------选择酒店界面----------------------------------#
        那么    掌上如家跳转到过夜房选择酒店界面
        而且    掌上如家页面有酒店列表
		当      用户选择第一个不是已满的酒店
#--------------酒店详情界面------------------------------------#
        那么    掌上如家跳转到选房预订界面
        而且    掌上如家有房型列表
		当      用户展开第一个不是已满的房型
        那么    掌上如家房型会有“门市价”控件
        当      用户划动第一个不是已满的房型到最顶
        那么    掌上如家房型会有“会员价”控件
        而且    掌上如家房型会有“预订”按钮
        当      用户点击“预订”按钮
#--------------提交订单界面-----------------------------------#
        那么    掌上如家跳转到“提交订单”界面
		当      用户点击“提交订单”按钮
#--------------订单支付界面-----------------------------------#
		那么    掌上如家出现“订单支付”界面
        
###############基于账号安全，不实现支付过程######################        
        当      用户点击左上角返回按钮
        那么    掌上如家提示“订单尚未支付”
        当      用户点击“返回首页”
#--------------主界面---------------------------------------#
        那么    掌上如家显示“过夜房”页面
        当      用户执行取消订单等一系列动作
        那么    掌上如家跳转到“我的订单”界面

    @booking-high-level, @special-test #pass
    场景:不能定位，立即预订过夜房并支付成功
#--------------主界面---------------------------------------#
        当      用户点击城市
###############城市选择界面################################
        那么    掌上如家出现“城市选择”界面
        而且    掌上如家“当前位置”为“定位失败”
        当      用户点击左上角返回按钮
##########################################################
        而且    掌上如家有“过夜房”页面
        当      用户点击“立即预订”
#--------------选择酒店界面----------------------------------#
        那么    掌上如家跳转到过夜房选择酒店界面
        而且    掌上如家页面有酒店列表
		当      用户选择第一个不是已满的酒店
#--------------酒店详情界面------------------------------------#
        那么    掌上如家跳转到选房预订界面
        而且    掌上如家有房型列表
		当      用户展开第一个不是已满的房型
        那么    掌上如家房型会有“门市价”控件
        当      用户划动第一个不是已满的房型到最顶
        那么    掌上如家房型会有“会员价”控件
        而且    掌上如家房型会有“预订”按钮
        当      用户点击“预订”按钮
#--------------提交订单界面-----------------------------------#
        那么    掌上如家跳转到“提交订单”界面
		当      用户点击“提交订单”按钮
#--------------订单支付界面-----------------------------------#
		那么    掌上如家出现“订单支付”界面
        
###############基于账号安全，不实现支付过程######################        
        当      用户点击左上角返回按钮
        那么    掌上如家提示“订单尚未支付”
        当      用户点击“返回首页”
#--------------主界面---------------------------------------#
        那么    掌上如家显示“过夜房”页面
        当      用户执行取消订单等一系列动作
        那么    掌上如家跳转到“我的订单”界面

    @booking-high-level #pass
    场景:先立即预订不支付，在我的订单中支付
#--------------主界面---------------------------------------#
        当      用户点击“立即预订”
#--------------选择酒店界面----------------------------------#
        那么    掌上如家跳转到过夜房选择酒店界面
        而且    掌上如家页面有酒店列表
		当      用户选择第一个不是已满的酒店
#--------------酒店详情界面------------------------------------#
        那么    掌上如家跳转到选房预订界面
        而且    掌上如家有房型列表
		当      用户展开第一个不是已满的房型
        那么    掌上如家房型会有“门市价”控件
        当      用户划动第一个不是已满的房型到最顶
        那么    掌上如家房型会有“会员价”控件
        而且    掌上如家房型会有“预订”按钮
        当      用户点击“预订”按钮
#--------------提交订单界面-----------------------------------#
        那么    掌上如家跳转到“提交订单”界面
        当      用户点击“提交订单”按钮
#--------------订单支付界面-----------------------------------#
        那么    掌上如家出现“订单支付”界面
        当      用户点击左上角返回按钮
        那么    掌上如家提示“订单尚未支付”
        当      用户点击“返回首页”
#--------------主界面---------------------------------------#
        当      用户点击“我的”
#--------------我的界面---------------------------------------#
        当      用户点击“我的订单”
#--------------我的订单界面---------------------------------------#
        那么    掌上如家跳转到“我的订单”界面
        假如    掌上如家有“预订成功”的订单
        当      用户点击以上订单
#--------------订单详情界面-----------------------------------#
        那么    掌上如家跳转到“订单详情”界面
        而且    掌上如家有“立即支付”按钮
        当      用户点击“立即支付”按钮
#--------------订单支付界面-----------------------------------#
        那么    掌上如家出现“订单支付”界面      
         
###############基于账号安全，不实现支付过程######################  
        当      用户点击左上角返回按钮
#--------------订单详情界面-----------------------------------#
        那么    掌上如家跳转到“订单详情”界面 
        当      用户上划屏幕查看订单详情直到有“取消订单”
        当      用户点击“取消订单”
        那么    掌上如家提示“是否取消当前订单”
        当      用户点击“是”
        那么    掌上如家提示“订单取消成功”
#--------------我的订单界面---------------------------------------#
        那么    掌上如家跳转到“我的订单”界面
        当      用户点击左上角返回按钮
#--------------我的界面---------------------------------------#
        那么    掌上如家跳转到我的界面

    @booking-high-level #pass
    场景:预订时租房并支付成功
        假如    当前时间在8点到16点之间
#--------------主界面---------------------------------------#
        当      用户点击“时租房”
        那么    掌上如家的“时租房”为可用
        而且    掌上如家出现“仅限今天”提示
        当      用户点击“立即预订”
#--------------选择酒店界面----------------------------------#
        那么    掌上如家跳转到选择时租房酒店界面
        而且    掌上如家页面有酒店列表
		当      用户选择第一个不是已满的酒店
#--------------酒店详情界面------------------------------------#
        那么    掌上如家跳转到选房预订界面
        而且    掌上如家有房型列表
		当      用户划动第一个不是已满的房型到最顶
        那么    掌上如家房型会有“预订”按钮
        当      用户点击“预订”按钮
#--------------提交订单界面-----------------------------------#
        那么    掌上如家跳转到“提交订单”界面
		当      用户点击“提交订单”按钮
#--------------订单支付界面-----------------------------------#
		那么    掌上如家出现“订单支付”界面
        
###############基于账号安全，不实现支付过程######################        
        当      用户点击左上角返回按钮
        那么    掌上如家提示“订单尚未支付”
        当      用户点击“返回首页”
#--------------主界面---------------------------------------#
        那么    掌上如家显示“过夜房”页面
        当      用户执行取消订单等一系列动作
        那么    掌上如家跳转到“我的订单”界面
        

    @booking-high-level #pass
    场景:在酒店收藏中预订并支付
#--------------主界面---------------------------------------#
        当      用户点击“我的”
#--------------我的界面---------------------------------------#
        当      用户上划屏幕查看我的页面直到有“我的收藏”
        当      用户点击“我的收藏”
        那么    掌上如家有收藏酒店列表
#--------------我的收藏界面---------------------------------------#
        当      用户选择第一个酒店
#--------------酒店详情界面------------------------------------#
        那么    掌上如家跳转到选房预订界面
        而且    掌上如家有房型列表
		当      用户展开第一个不是已满的房型
        那么    掌上如家房型会有“门市价”控件
        当      用户划动第一个不是已满的房型到最顶
        那么    掌上如家房型会有“会员价”控件
        而且    掌上如家房型会有“预订”按钮
        当      用户点击“预订”按钮
#--------------提交订单界面-----------------------------------#
        那么    掌上如家跳转到“提交订单”界面
        当      用户点击“提交订单”按钮
###############订单支付界面################################
        那么    掌上如家出现“订单支付”界面
        
###############基于账号安全，不实现支付过程######################        
        当      用户点击左上角返回按钮
        那么    掌上如家提示“订单尚未支付”
        当      用户点击“返回首页”
#--------------主界面---------------------------------------#
        那么    掌上如家显示“过夜房”页面
        当      用户执行取消订单等一系列动作
        那么    掌上如家跳转到“我的订单”界面
        
    @booking-high-level #pass
    场景:先预订不支付，在我的订单中取消
#--------------主界面---------------------------------------#
        当      用户点击“立即预订”
#--------------选择酒店界面----------------------------------#
        那么    掌上如家跳转到过夜房选择酒店界面
        而且    掌上如家页面有酒店列表
		当      用户选择第一个不是已满的酒店
#--------------酒店详情界面------------------------------------#
        那么    掌上如家跳转到选房预订界面
        而且    掌上如家有房型列表
		当      用户展开第一个不是已满的房型
        那么    掌上如家房型会有“门市价”控件
        当      用户划动第一个不是已满的房型到最顶
        那么    掌上如家房型会有“会员价”控件
        而且    掌上如家房型会有“预订”按钮
        当      用户点击“预订”按钮
#--------------提交订单界面-----------------------------------#
        那么    掌上如家跳转到“提交订单”界面
		当      用户点击“提交订单”按钮
#--------------订单支付界面-----------------------------------#
		那么    掌上如家出现“订单支付”界面
        当      用户点击左上角返回按钮
        那么    掌上如家提示“订单尚未支付”
        当      用户点击“返回首页”
#--------------主界面---------------------------------------#
        那么    掌上如家显示“过夜房”页面
        当      用户执行取消订单等一系列动作
        那么    掌上如家跳转到“我的订单”界面

    #@booking-high-level #pass
    场景:立即预订并支付成功后申请退款（设计账户安全，此用例不实施）

    @booking-high-level #pass
    场景:选择一个酒店后，从酒店详情页返回酒店结果页，选择另一家酒店预订并支付成功
#--------------主界面---------------------------------------#
        当      用户点击“立即预订”
#--------------选择酒店界面----------------------------------#
        那么    掌上如家跳转到过夜房选择酒店界面
        而且    掌上如家页面有酒店列表
		当      用户选择第一个不是已满的酒店
#--------------酒店详情界面------------------------------------#
        那么    掌上如家跳转到选房预订界面
        而且    掌上如家有房型列表
        当      用户点击左上角返回按钮
#--------------酒店结果界面----------------------------------#
        那么    掌上如家跳转到过夜房选择酒店界面
        而且    掌上如家页面有酒店列表
		当      用户选择第二个不是已满的酒店
#--------------酒店详情界面----------------------------------#
        那么    掌上如家跳转到选房预订界面
        而且    掌上如家有房型列表
		当      用户展开第一个不是已满的房型
        那么    掌上如家房型会有“门市价”控件
        当      用户划动第一个不是已满的房型到最顶
        那么    掌上如家房型会有“会员价”控件
        而且    掌上如家房型会有“预订”按钮
        当      用户点击“预订”按钮
#--------------提交订单界面-----------------------------------#
        那么    掌上如家跳转到“提交订单”界面
        当      用户点击“提交订单”按钮
###############订单支付界面################################
        那么    掌上如家出现“订单支付”界面
        
###############基于账号安全，不实现支付过程######################        
        当      用户点击左上角返回按钮
        那么    掌上如家提示“订单尚未支付”
        当      用户点击“返回首页”
#--------------主界面---------------------------------------#
        那么    掌上如家显示“过夜房”页面
        当      用户执行取消订单等一系列动作
        那么    掌上如家跳转到“我的订单”界面

    @booking-high-level #pass
    场景:提交订单时放弃订单，返回酒店详情页重新预订支付成功
#--------------主界面---------------------------------------#
        当      用户点击“立即预订”
#--------------选择酒店界面----------------------------------#
        那么    掌上如家跳转到过夜房选择酒店界面
        而且    掌上如家页面有酒店列表
		当      用户选择第一个不是已满的酒店
#--------------酒店详情界面------------------------------------#
        那么    掌上如家跳转到选房预订界面
        而且    掌上如家有房型列表
        当      用户上划屏幕查看房型直到酒店房型有“大床房”
        当      用户上划“大床房”到屏幕最顶
		当      用户点击“大床房”
        那么    掌上如家房型会有“门市价”控件
        当      用户上划“大床房”到屏幕最顶
        那么    掌上如家房型会有“会员价”控件
        而且    掌上如家房型会有“预订”按钮
        假如    掌上如家“大床房”有“会员价”房间
        当      用户点击“会员价”右边的“预订”按钮
#--------------提交订单界面-----------------------------------#
        那么    掌上如家跳转到“提交订单”界面
        当      用户点击左上角返回按钮
        那么    掌上如家提示“放弃这张订单吗？”
        当      用户点击“放弃订单”
#--------------酒店详情界面------------------------------------#
        那么    掌上如家跳转到选房预订界面
        而且    掌上如家有房型列表  
        当      用户上划屏幕查看房型直到酒店房型有“标准双床房”
        当      用户上划“标准双床房”到屏幕最顶
		当      用户点击“标准双床房”
        那么    掌上如家房型会有“门市价”控件
        当      用户上划“标准双床房”到屏幕最顶
        那么    掌上如家房型会有“会员价”控件
        而且    掌上如家房型会有“预订”按钮
        假如    掌上如家“标准双床房”有“会员价”房间
        当      用户点击“会员价”右边的“预订”按钮
#--------------提交订单界面-----------------------------------#
        那么    掌上如家跳转到“提交订单”界面
        当      用户点击“提交订单”按钮
###############订单支付界面################################
        那么    掌上如家出现“订单支付”界面
        
###############基于账号安全，不实现支付过程######################        
        当      用户点击左上角返回按钮
        那么    掌上如家提示“订单尚未支付”
        当      用户点击“返回首页”
#--------------主界面---------------------------------------#
        那么    掌上如家显示“过夜房”页面
        当      用户执行取消订单等一系列动作
        那么    掌上如家跳转到“我的订单”界面


    @booking-high-level, @not-implemented #民宿入口需要更新
    场景:预定民宿并支付成功 
#--------------主界面---------------------------------------#
        当      用户向下滑动首页
        当      用户点击民宿
#--------------民宿界面---------------------------------------#
        那么    掌上如家跳转到“休闲度假”界面
        而且    掌上如家有“您想去哪里”
        当      用户点击“您想去哪里”
        那么    掌上如家跳转到“选择城市”界面
        当      用户点击“大理”
#--------------选择酒店界面----------------------------------#
        那么    掌上如家跳转到民宿选择酒店界面
        而且    掌上如家页面有酒店列表
		当      用户选择第一个不是已满的酒店
#--------------酒店详情界面------------------------------------#
        那么    掌上如家跳转到选房预订界面
		当      用户展开第一个不是已满的房型
        那么    掌上如家房型会有“门市价”控件
        当      用户划动第一个不是已满的房型到最顶
        那么    掌上如家房型会有“会员价”控件
        而且    掌上如家房型会有“预订”按钮
        当      用户点击“预订”按钮
#--------------提交订单界面-----------------------------------#
        那么    掌上如家跳转到“提交订单”界面
        当      用户点击“提交订单”按钮
###############订单支付界面################################
        那么    掌上如家出现“订单支付”界面
        
###############基于账号安全，不实现支付过程######################        
        当      用户点击左上角返回按钮
        那么    掌上如家提示“订单尚未支付”
        当      用户点击“返回首页”
#--------------主界面---------------------------------------#
        那么    掌上如家显示“过夜房”页面
        当      用户执行取消订单等一系列动作
        那么    掌上如家跳转到“我的订单”界面


    @booking-high-level #pass
    场景:跳转自助服务页
#--------------主界面---------------------------------------#
        当      用户点击“立即预订”
#--------------选择酒店界面----------------------------------#
        那么    掌上如家跳转到过夜房选择酒店界面
        而且    掌上如家页面有酒店列表
		当      用户选择第一个不是已满的酒店
#--------------酒店详情界面------------------------------------#
        那么    掌上如家跳转到选房预订界面
        而且    掌上如家有房型列表
		当      用户展开第一个不是已满的房型
        那么    掌上如家房型会有“门市价”控件
        当      用户划动第一个不是已满的房型到最顶
        那么    掌上如家房型会有“会员价”控件
        而且    掌上如家房型会有“预订”按钮
        当      用户点击“预订”按钮
#--------------提交订单界面-----------------------------------#
        那么    掌上如家跳转到“提交订单”界面
        当      用户点击“提交订单”按钮
###############订单支付界面################################
        那么    掌上如家出现“订单支付”界面
        当      用户点击左上角返回按钮
        那么    掌上如家提示“订单尚未支付”
        当      用户点击“返回首页”
#--------------主界面---------------------------------------#
        那么    掌上如家显示“过夜房”页面
        而且    掌上如家有“您预订”控件
		当      用户点击“您预订”
#--------------自助服务界面---------------------------------------#
        那么    掌上如家跳转到“自助服务”界面

		当		用户点击左上角返回按钮
		那么		掌上如家显示“过夜房”页面
        当      用户执行取消订单等一系列动作
        那么    掌上如家跳转到“我的订单”界面

    @booking-high-level #pass
    场景:酒店结果页返回预定首页
#--------------主界面---------------------------------------#
        当      用户点击“立即预订”
#--------------选择酒店界面----------------------------------#
        那么    掌上如家跳转到过夜房选择酒店界面
        而且    掌上如家页面有酒店列表
		当      用户选择第一个不是已满的酒店
#--------------酒店详情界面------------------------------------#
        那么    掌上如家跳转到选房预订界面
        而且    掌上如家有房型列表
        当      用户点击左上角返回按钮
#--------------酒店结果界面----------------------------------#
        那么    掌上如家跳转到过夜房选择酒店界面
        当      用户点击左上角返回按钮
#--------------主界面---------------------------------------#
        那么    掌上如家显示“过夜房”页面

    @booking-high-level #pass
    场景:在历史订单中再次预订并支付成功
#--------------主界面---------------------------------------#
        当      用户点击“我的”
#--------------我的界面---------------------------------------#
        当      用户点击“我的订单”
        那么    掌上如家跳转到“我的订单”界面
#--------------我的订单界面---------------------------------------#
        假如    掌上如家显示“暂无有效订单”或者有“预订成功”的订单
        当      用户点击“历史订单”
        假如    掌上如家有“再次预订”
        当      用户点击“再次预订”
#--------------酒店详情界面------------------------------------#
        那么    掌上如家跳转到选房预订界面
        而且    掌上如家有房型列表
		当      用户展开第一个不是已满的房型
        那么    掌上如家房型会有“门市价”控件
        当      用户划动第一个不是已满的房型到最顶
        那么    掌上如家房型会有“会员价”控件
        而且    掌上如家房型会有“预订”按钮
        当      用户点击“预订”按钮
#--------------提交订单界面-----------------------------------#
        那么    掌上如家跳转到“提交订单”界面
        当      用户点击“提交订单”按钮
###############订单支付界面################################
        那么    掌上如家出现“订单支付”界面
        
###############基于账号安全，不实现支付过程######################        
        当      用户点击左上角返回按钮
        那么    掌上如家提示“订单尚未支付”
        当      用户点击“返回首页”
#--------------主界面---------------------------------------#
        那么    掌上如家显示“过夜房”页面
        当      用户执行取消订单等一系列动作
        那么    掌上如家跳转到“我的订单”界面
        
    