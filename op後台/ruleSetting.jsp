<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="/CSS/player/style_page.css" rel="stylesheet" type="text/css">
<link href="/CSS/jquery-ui-themes-1.10.4/themes/smoothness/jquery-ui.min.css" rel="stylesheet" type="text/css"/>
<link href="/CSS/chosen/chosen.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="stylesheet" type="text/css" media="all" href="/CSS/admin.css" />
<link rel="stylesheet" type="text/css" media="all" href="/CSS/adminCommon.css" />

<script type="text/javaScript" src="/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="/js/jquery-ui.1.12.1-min.js"></script>
<script type="text/javascript" src="/js/jquery.blockUI.js"></script>
<script type="text/javascript" src="/js/util/JSUtil.js?v=2020090110"></script>
<script type="text/javascript" src="/js/chosen/chosen.jquery.js"></script>
<script type="text/javascript" src="/js/op/redPacket/ruleSetting.js?v=2020090110"></script>

<script>
    var $j = jQuery.noConflict();

    if (typeof (PageConfig) == 'undefined') {
        PageConfig = {};
    }

    function redirectHome(){
      window.location='ruleList.jsp'
    }

  $j(document).ready(function () {
    $j(".chosen-select-no-results").chosen({no_results_text: "No Match Website!!", search_contains: true});
    ruleSetting.init();
    if ("add" === "add") {
      ruleSetting.initAddPage();
    } else {
      ruleSetting.initQuery("add",0);
    }
  });
</script>
<style>
    .redPacketTable {
        color: #82530b;
        width: 100%;
        margin-top: 10px;
    }

    .redPacketTable td {
        padding: 10px;
        align: left;
        border-top: 1px solid #82530b;
        border-bottom: 1px solid #82530b;
    }

    .redPacketTable th {
        padding: 10px;
        border-top: 1px solid #82530b;
        border-bottom: 1px solid #82530b;
    }

    .redPacketTable thead {
        font-weight: bold;
    }

    .redPacketBtn:disabled{
        border: 1px solid #19636D;
        background-color: #666666;
        background: linear-gradient(-179deg, #666666 0%, #666666 100%);
        color: #fff;
    }

    .redPacketBtn {
        width: 120px;
        height: 40px;
        cursor: pointer;
        border-collapse: separate; /*IE9 shadow bug*/
        border-radius: 6px;
        color: #fff;
        text-align: center;
        line-height: 26px;
        font-weight: bold;
        background: linear-gradient(-179deg, #1CA8BB 0%, #0E7F8F 100%);
        font-size: 18px;
        border: 1px solid #19636D;
        box-shadow: 0 2px 0 rgba(0, 0, 0, 0.15);
        margin-top: 13px;
        margin-left: 5px;
    }

    .redPacketBtn:hover {
        background: linear-gradient(-155deg, #1CA8BB 20%, #0E7F8F 80%);
        text-decoration: none;
    }

    h3 {
        margin-top: 20px;
    }

    input[type="radio"] {
        width: 30px;
    }

    input[type="checkbox"] {
        width: 30px;
    }

    .participateLimitGroup {
        width: 40px;
        margin: 0 6px;
    }

    .betlimitGroup {
        width: 60px;
        margin: 0 6px;
    }

    .inputText {
        margin: 0 6px;
    }

    .subRedPacketTable th {
        border: 0px;
    }

    .enabledButton {
        padding: 3px 7px;
        margin-right: 5px;
    }
</style>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>
</head>
<body>
<div style="margin: 0 auto; width: 90%; padding: 20px">
    <h1 id="formTitle">紅包雨設定</h1>
    <br/>
    <hr/>
    <div style="margin: 0 auto">
        <div id="baseSetting">
            <table class="redPacketTable" align="left">
                <thead>
                    <tr id="packetId">
                        <th align="right">紅包ID :</th>
                        <th align="left" colspan="2">
                            <input type="text" id="id"/>
                        </th>
                    </tr>
                    <tr>
                        <th align="right">預告時間 :</th>
                        <th align="left" colspan="2">
                            <input type="text" id="noticeStrDate" style="width: 110px" readonly/>
                            <select name="select" id="noticeStrHr"></select> 時
                            <select name="select" id="noticeStrMin"></select> 分
                            <select name="select" id="noticeStrSec"></select> 秒 ---

                            <input type="text" id="noticeEndDate" style="width: 110px" readonly/>
                            <select name="select" id="noticeEndHr"></select> 時
                            <select name="select" id="noticeEndMin"></select> 分
                            <select name="select" id="noticeEndSec"></select> 秒
                        </th>
                    </tr>
                    <tr>
                        <th align="right">活動期間 :</th>
                        <th align="left" colspan="2">
                            <input type="text" id="strDate" style="width: 110px" readonly/>
                            <select name="select" id="strHr"></select> 時
                            <select name="select" id="strMin"></select> 分
                            <select name="select" id="strSec"></select> 秒 ---

                            <input type="text" id="endDate" style="width: 110px" readonly/>
                            <select name="select" id="endHr"></select> 時
                            <select name="select" id="endMin"></select> 分
                            <select name="select" id="endSec"></select> 秒
                        </th>
                    </tr>
                    <tr>
                        <th align="right" style="width: 150px;">DealerDomain :</th>
                        <th align="left" style="width: 204px;">
                            <select style="width: 110px" id="dealerDomainType" name="dealerDomainType">
                                
                                <option value="0">Bavet
                                </option>
                                
                                <option value="1">Mexico
                                </option>
                                
                                <option value="2">Neumex
                                </option>
                                
                                <option value="999">UNITTest
                                </option>
                                
                            </select>
                        </th>
                        <th align="left">活動使用幣別 :&nbsp;&nbsp;
                            <select style="width: 110px" name="select" id="currency">
                                <option value="-1">ALL</option>
                                
                                <option value="0">SGD
                                </option>
                                
                                <option value="1">MYR
                                </option>
                                
                                <option value="2">HKD
                                </option>
                                
                                <option value="3">CNY
                                </option>
                                
                                <option value="4">JPY
                                </option>
                                
                                <option value="5">AUD
                                </option>
                                
                                <option value="6">IDR
                                </option>
                                
                                <option value="7">USD
                                </option>
                                
                                <option value="8">KRW
                                </option>
                                
                                <option value="9">THB
                                </option>
                                
                                <option value="10">TWD
                                </option>
                                
                                <option value="11">VND
                                </option>
                                
                                <option value="12">NZD
                                </option>
                                
                                <option value="13">PTI
                                </option>
                                
                                <option value="14">PTV
                                </option>
                                
                                <option value="15">INR
                                </option>
                                
                                <option value="16">MBTC
                                </option>
                                
                                <option value="17">METH
                                </option>
                                
                                <option value="18">EOS
                                </option>
                                
                                <option value="19">MLTC
                                </option>
                                
                                <option value="20">PHP
                                </option>
                                
                                <option value="21">PTS
                                </option>
                                
                                <option value="22">EUR
                                </option>
                                
                                <option value="23">MNT
                                </option>
                                
                                <option value="24">RUB
                                </option>
                                
                                <option value="25">MMK
                                </option>
                                
                                <option value="26">AED
                                </option>
                                
                                <option value="27">MMKK
                                </option>
                                
                                <option value="28">CAD
                                </option>
                                
                                <option value="29">GBP
                                </option>
                                
                                <option value="30">NOK
                                </option>
                                
                                <option value="31">SEK
                                </option>
                                
                                <option value="32">ZAR
                                </option>
                                
                                <option value="33">ZWD
                                </option>
                                
                                <option value="34">BND
                                </option>
                                
                            </select>
                            <input type="hidden" id="tempCurrency"/>
                        </th>
                    </tr>
                </thead>
                <tbody id="baseSettingBody">
                </tbody>
            </table>
            <div>&nbsp;</div>
            <div>
                <h3>玩家參與條件</h3>
                <table class="redPacketTable">
                    <tbody>
                    <tr>
                        <th colspan="2" align="left">
                            <input type="radio" name="participateLimit" value="0" checked/> 无条件（达成以下条件并非黑名单标签者均可参与活动）<br>
                            <input type="radio" name="participateLimit" value="1"/> 有条件（达成以下条件并非黑名单标签者均可参与活动）
                        </th>
                    </tr>
                    <tr>
                        <th width="30"></th>
                        <th align="left">
                            <input type="checkbox" class="participateLimitGroup" name="participateLimitCheckBox" value="loginCond"> 登录AE SEXY累积达<input type="number" class="participateLimitGroup" id="loginDays"/>天<br>
                        </th>
                    </tr>
                    <tr>
                        <th width="30"></th>
                        <th align="left">
                            <input type="checkbox" class="participateLimitGroup" name="participateLimitCheckBox" value="unloginCond"> 未登录AE SEXY累积达<input type="number" class="participateLimitGroup" id="unloginDays"/>天<br>
                        </th>
                    </tr>
                    <tr>
                        <th width="30"></th>
                        <th align="left">
                            <input type="checkbox" class="participateLimitGroup" name="participateLimitCheckBox" value="singleBetCond"> 压注AE SEXY累积达<input type="number" class="participateLimitGroup" id="countBet"/>次 , 每注 <input type="number" class="participateLimitGroup" id="singleBet"/> 元以上<br>
                        </th>
                    </tr>
                    <tr>
                        <th width="30"></th>
                        <th align="left">
                            <input type="checkbox" class="participateLimitGroup" name="participateLimitCheckBox" value="totalBetCond"> 投注AE SEXY累积达<input type="number" class="participateLimitGroup" id="totalBet"/>元<br>
                        </th>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div>
                <h3>投注條件</h3>
                <table class="redPacketTable">
                    <tbody>
                    <tr>
                        <th colspan="2" align="left">
                            有活動期間內符合以下條件
                        </th>
                    </tr>
                    <tr>
                        <th width="30"></th>
                        <th align="left">
                            <input class="betlimitGroup" type="checkbox" name="betLimitCheckBox" value="countLimitCond">压注AE SEXY累积达<input class="betlimitGroup" type="number" id="minCountLimit" value="30"/>局 , 每注 <input class="betlimitGroup" type="number" id="singleBetLimit" value="50"/>元以上<br>
                        </th>
                    </tr>
                    <tr>
                        <th width="30"></th>
                        <th align="left">
                            <input class="betlimitGroup" type="checkbox" name="betLimitCheckBox" value="totalBetLimitCond">投注AE SEXY累积达<input class="betlimitGroup" type="number" id="totalBetLimit" value="1000"/>元
                        </th>
                    </tr>
                    <tr>
                        <th width="30"></th>
                        <th align="left">
                            可获得红包雨<input type="number" id="reachedRedPacket" class="inputText" style="width:40px" value="1"/>次   玩家至多可得红包雨<input type="number" id="totalRedPacket" class="inputText" style="width:40px" value="5"/> 次
                        </th>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div>
                <h3>獎金派發</h3>
                <table class="redPacketTable">
                    <tbody>
                    <tr>
                        <th width="150" align="left" style="vertical-align:top">
                            <input type="radio" name="rewardRule" value="0" checked/>依投注等級派發
                        </th>
                        <th align="left">
                            <table id='gradeRuleTable' class="subRedPacketTable">
                                <tr>
                                    <th align="left">活動獎金:  <input type="number" id="totalGradeReward" /></th>
                                    <th align="left">投注金額排除<input type="number" id="excludeBetCount" value="3" style="width:50px;margin: 0 6px;" />筆</th>
                                </tr>
                                <tr>
                                    <th align="left">總期望獎金金額:  <span id="expectedRewardStr"></span><span id="expectedReward" style="display: none"></span></th>
                                    <th align="left">總期望獎金金額 = sum ( ( 獎金上限 + 獎金下限 ) / 2 X 紅包等級數量 )</th>
                                </tr>
                                <tr align="left" style="padding:0">
                                    <th align="left" colspan="2"><table id="redPacketGradeTbody"></table></th>
                                </tr>
                                <tr align="left">
                                    <th align="left" width="280px"></th>
                                    <th align="left" style="padding: 20px 0 0 10px;">紅包等級</th>
                                </tr>
                                <tr align="left" style="padding:0">
                                    <th align="left" colspan="2"><table id="betGradeTbody"></table></th>
                                </tr>
                            </table>
                        </th>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div>
                <h3>活動結束緩衝時間</h3>
                <table class="redPacketTable">
                    <tbody>
                        <tr>
                            <th align="left">
                                <input type="radio" name="bufferTimeLimit" value="0" checked/>無緩衝期, 活動時間結束即刻關閉活動
                            </th>
                        </tr>
                        <tr>
                            <th align="left">
                                <input type="radio" name="bufferTimeLimit" value="1"/>活動時間結束後, 緩衝<input type="number" class="inputText" style="width:50px" id="bufferTime" value="120"/>分鐘
                            </th>
                        </tr>
                    </tbody>
                </table>
            </div>
            <br>
            <input type="submit" name="button" id="baseSettingCancelBtn" class="redPacketBtn" value="Cancel" onclick="redirectHome();">
            <input type="submit" name="button" id="baseSettingNextBtn" class="redPacketBtn" value="Next">
        </div>
        <div id="websiteSetting">
            <h1>Website 設定</h1>
            <div>
                <table class="redPacketTable">
                    <tbody>
                    <tr>
                        <th align="left" style="border-top:0px">
                            DealerDomainType: <input type="button" id="dealerDomainText" disabled value="Mexico" style="background-color:transparent;border:0px;color:black;">
                        </th>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div>
                <table class="redPacketTable" align="left" style="width:100%">
                    <thead>
                    <tr>
                        <th align="left" colspan="3" style="border-top:0px">
                            <input type="button" class="enabledButton" id="enableAllWebsite" value="Enable All"> <input type="button" class="enabledButton" id="disableAllWebsite" value="Disable All">
                        </th>
                    </tr>
                    <tr>
                        <td style="width:350px" align="center">Website</td>
                        <td align="left" colspan="2">Enable</td>
                    </tr>
                    
                    <tr>
                        <th>DemoMexCn</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="996WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">996</th>
                    </tr>
                    
                    <tr>
                        <th>Home</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="0WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">0</th>
                    </tr>
                    
                    <tr>
                        <th>MPSB</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="2WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">2</th>
                    </tr>
                    
                    <tr>
                        <th>MarcTest</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="998WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">998</th>
                    </tr>
                    
                    <tr>
                        <th>Mex1199119</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="995WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">995</th>
                    </tr>
                    
                    <tr>
                        <th>Mex123bet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="161WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">161</th>
                    </tr>
                    
                    <tr>
                        <th>Mex12play</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="70WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">70</th>
                    </tr>
                    
                    <tr>
                        <th>Mex18ace</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="159WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">159</th>
                    </tr>
                    
                    <tr>
                        <th>Mex1betwin</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="239WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">239</th>
                    </tr>
                    
                    <tr>
                        <th>Mex1xbet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="76WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">76</th>
                    </tr>
                    
                    <tr>
                        <th>Mex5gbet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="225WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">225</th>
                    </tr>
                    
                    <tr>
                        <th>Mex66Sexygame</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="199WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">199</th>
                    </tr>
                    
                    <tr>
                        <th>Mex757group</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="83WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">83</th>
                    </tr>
                    
                    <tr>
                        <th>Mex7up</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="258WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">258</th>
                    </tr>
                    
                    <tr>
                        <th>Mex82922</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="237WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">237</th>
                    </tr>
                    
                    <tr>
                        <th>Mex918jubb</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="93WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">93</th>
                    </tr>
                    
                    <tr>
                        <th>Mex928club</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="68WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">68</th>
                    </tr>
                    
                    <tr>
                        <th>Mex998v2</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="65WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">65</th>
                    </tr>
                    
                    <tr>
                        <th>MexAELine</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="278WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">278</th>
                    </tr>
                    
                    <tr>
                        <th>MexAGST</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="205WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">205</th>
                    </tr>
                    
                    <tr>
                        <th>MexAWC</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="50WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">50</th>
                    </tr>
                    
                    <tr>
                        <th>MexAWC2</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="252WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">252</th>
                    </tr>
                    
                    <tr>
                        <th>MexAWC3</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="254WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">254</th>
                    </tr>
                    
                    <tr>
                        <th>MexAWC4</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="256WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">256</th>
                    </tr>
                    
                    <tr>
                        <th>MexAWC5</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="272WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">272</th>
                    </tr>
                    
                    <tr>
                        <th>MexAWCA</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="264WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">264</th>
                    </tr>
                    
                    <tr>
                        <th>MexAWCA2</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="266WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">266</th>
                    </tr>
                    
                    <tr>
                        <th>MexAWCA3</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="268WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">268</th>
                    </tr>
                    
                    <tr>
                        <th>MexAWCA4</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="270WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">270</th>
                    </tr>
                    
                    <tr>
                        <th>MexAWCA5</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="274WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">274</th>
                    </tr>
                    
                    <tr>
                        <th>MexAces33</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="77WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">77</th>
                    </tr>
                    
                    <tr>
                        <th>MexAe888</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="39WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">39</th>
                    </tr>
                    
                    <tr>
                        <th>MexAechess</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="180WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">180</th>
                    </tr>
                    
                    <tr>
                        <th>MexAfb99</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="234WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">234</th>
                    </tr>
                    
                    <tr>
                        <th>MexAgp88</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="102WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">102</th>
                    </tr>
                    
                    <tr>
                        <th>MexAibo</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="48WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">48</th>
                    </tr>
                    
                    <tr>
                        <th>MexAllbet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="262WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">262</th>
                    </tr>
                    
                    <tr>
                        <th>MexAllstar55</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="196WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">196</th>
                    </tr>
                    
                    <tr>
                        <th>MexAplus</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="105WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">105</th>
                    </tr>
                    
                    <tr>
                        <th>MexArena777</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="66WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">66</th>
                    </tr>
                    
                    <tr>
                        <th>MexAsia999</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="178WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">178</th>
                    </tr>
                    
                    <tr>
                        <th>MexAsia9club</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="155WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">155</th>
                    </tr>
                    
                    <tr>
                        <th>MexAsiaBignet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="242WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">242</th>
                    </tr>
                    
                    <tr>
                        <th>MexAsiawin99</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="188WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">188</th>
                    </tr>
                    
                    <tr>
                        <th>MexAskmebet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="67WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">67</th>
                    </tr>
                    
                    <tr>
                        <th>MexBCbaccarat</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="95WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">95</th>
                    </tr>
                    
                    <tr>
                        <th>MexBallbet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="152WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">152</th>
                    </tr>
                    
                    <tr>
                        <th>MexBestbet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="166WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">166</th>
                    </tr>
                    
                    <tr>
                        <th>MexBet123</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="217WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">217</th>
                    </tr>
                    
                    <tr>
                        <th>MexBet1s</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="184WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">184</th>
                    </tr>
                    
                    <tr>
                        <th>MexBetdeal</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="151WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">151</th>
                    </tr>
                    
                    <tr>
                        <th>MexBongvn88</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="90WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">90</th>
                    </tr>
                    
                    <tr>
                        <th>MexBoombet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="224WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">224</th>
                    </tr>
                    
                    <tr>
                        <th>MexBsbbet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="197WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">197</th>
                    </tr>
                    
                    <tr>
                        <th>MexCWA</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="247WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">247</th>
                    </tr>
                    
                    <tr>
                        <th>MexCa17888</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="86WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">86</th>
                    </tr>
                    
                    <tr>
                        <th>MexCakraBet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="249WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">249</th>
                    </tr>
                    
                    <tr>
                        <th>MexCasino168</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="91WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">91</th>
                    </tr>
                    
                    <tr>
                        <th>MexCasinoxb</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="106WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">106</th>
                    </tr>
                    
                    <tr>
                        <th>MexCmm4w</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="232WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">232</th>
                    </tr>
                    
                    <tr>
                        <th>MexCmm5w</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="126WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">126</th>
                    </tr>
                    
                    <tr>
                        <th>MexComebetna</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="185WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">185</th>
                    </tr>
                    
                    <tr>
                        <th>MexDfbsg</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="146WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">146</th>
                    </tr>
                    
                    <tr>
                        <th>MexDreamPlay</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="46WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">46</th>
                    </tr>
                    
                    <tr>
                        <th>MexDwin378</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="208WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">208</th>
                    </tr>
                    
                    <tr>
                        <th>MexEgroup88</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="215WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">215</th>
                    </tr>
                    
                    <tr>
                        <th>MexEnjoy11</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="80WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">80</th>
                    </tr>
                    
                    <tr>
                        <th>MexFastbet98</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="246WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">246</th>
                    </tr>
                    
                    <tr>
                        <th>MexFoxz168</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="129WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">129</th>
                    </tr>
                    
                    <tr>
                        <th>MexGameintact</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="96WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">96</th>
                    </tr>
                    
                    <tr>
                        <th>MexGamestone</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="135WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">135</th>
                    </tr>
                    
                    <tr>
                        <th>MexGamingsoft</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="54WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">54</th>
                    </tr>
                    
                    <tr>
                        <th>MexGarudabet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="58WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">58</th>
                    </tr>
                    
                    <tr>
                        <th>MexGg88club</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="216WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">216</th>
                    </tr>
                    
                    <tr>
                        <th>MexGoal6969</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="228WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">228</th>
                    </tr>
                    
                    <tr>
                        <th>MexGoldbet888</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="118WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">118</th>
                    </tr>
                    
                    <tr>
                        <th>MexGpk</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="132WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">132</th>
                    </tr>
                    
                    <tr>
                        <th>MexGplay99</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="114WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">114</th>
                    </tr>
                    
                    <tr>
                        <th>MexGreenstar</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="109WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">109</th>
                    </tr>
                    
                    <tr>
                        <th>MexGreenx88</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="98WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">98</th>
                    </tr>
                    
                    <tr>
                        <th>MexGsbet365</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="186WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">186</th>
                    </tr>
                    
                    <tr>
                        <th>MexGsm</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="140WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">140</th>
                    </tr>
                    
                    <tr>
                        <th>MexGygroup</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="147WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">147</th>
                    </tr>
                    
                    <tr>
                        <th>MexH3bet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="193WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">193</th>
                    </tr>
                    
                    <tr>
                        <th>MexHYBBN</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="164WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">164</th>
                    </tr>
                    
                    <tr>
                        <th>MexHackbet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="64WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">64</th>
                    </tr>
                    
                    <tr>
                        <th>MexHao666vip</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="84WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">84</th>
                    </tr>
                    
                    <tr>
                        <th>MexHbthb</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="141WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">141</th>
                    </tr>
                    
                    <tr>
                        <th>MexIG</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="82WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">82</th>
                    </tr>
                    
                    <tr>
                        <th>MexIproBet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="241WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">241</th>
                    </tr>
                    
                    <tr>
                        <th>MexIronbet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="99WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">99</th>
                    </tr>
                    
                    <tr>
                        <th>MexJcash</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="231WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">231</th>
                    </tr>
                    
                    <tr>
                        <th>MexJiexun</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="167WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">167</th>
                    </tr>
                    
                    <tr>
                        <th>MexJincaishen</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="212WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">212</th>
                    </tr>
                    
                    <tr>
                        <th>MexJiubo</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="125WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">125</th>
                    </tr>
                    
                    <tr>
                        <th>MexJumbo</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="279WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">279</th>
                    </tr>
                    
                    <tr>
                        <th>MexKFRT</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="204WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">204</th>
                    </tr>
                    
                    <tr>
                        <th>MexKinglotto9</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="122WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">122</th>
                    </tr>
                    
                    <tr>
                        <th>MexKingpin88</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="221WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">221</th>
                    </tr>
                    
                    <tr>
                        <th>MexKingslot9</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="121WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">121</th>
                    </tr>
                    
                    <tr>
                        <th>MexKkslot</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="219WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">219</th>
                    </tr>
                    
                    <tr>
                        <th>MexKosun</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="170WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">170</th>
                    </tr>
                    
                    <tr>
                        <th>MexKz</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="158WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">158</th>
                    </tr>
                    
                    <tr>
                        <th>MexLescome</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="55WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">55</th>
                    </tr>
                    
                    <tr>
                        <th>MexLeshang</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="124WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">124</th>
                    </tr>
                    
                    <tr>
                        <th>MexLuckbet88</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="218WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">218</th>
                    </tr>
                    
                    <tr>
                        <th>MexLy929</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="87WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">87</th>
                    </tr>
                    
                    <tr>
                        <th>MexManbetX</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="194WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">194</th>
                    </tr>
                    
                    <tr>
                        <th>MexMarduo</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="71WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">71</th>
                    </tr>
                    
                    <tr>
                        <th>MexMaxim99</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="69WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">69</th>
                    </tr>
                    
                    <tr>
                        <th>MexMbet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="157WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">157</th>
                    </tr>
                    
                    <tr>
                        <th>MexMbet2</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="176WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">176</th>
                    </tr>
                    
                    <tr>
                        <th>MexMbsg88</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="154WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">154</th>
                    </tr>
                    
                    <tr>
                        <th>MexMbthai88</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="79WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">79</th>
                    </tr>
                    
                    <tr>
                        <th>MexMgm99win</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="100WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">100</th>
                    </tr>
                    
                    <tr>
                        <th>MexMoney88</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="260WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">260</th>
                    </tr>
                    
                    <tr>
                        <th>MexMx3</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="130WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">130</th>
                    </tr>
                    
                    <tr>
                        <th>MexMxOle</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="131WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">131</th>
                    </tr>
                    
                    <tr>
                        <th>MexMysnet88</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="75WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">75</th>
                    </tr>
                    
                    <tr>
                        <th>MexNaga88king</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="119WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">119</th>
                    </tr>
                    
                    <tr>
                        <th>MexNew1b</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="210WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">210</th>
                    </tr>
                    
                    <tr>
                        <th>MexNg</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="156WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">156</th>
                    </tr>
                    
                    <tr>
                        <th>MexNova88</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="259WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">259</th>
                    </tr>
                    
                    <tr>
                        <th>MexNova88net</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="276WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">276</th>
                    </tr>
                    
                    <tr>
                        <th>MexOO88</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="81WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">81</th>
                    </tr>
                    
                    <tr>
                        <th>MexOg</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="94WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">94</th>
                    </tr>
                    
                    <tr>
                        <th>MexOg2</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="162WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">162</th>
                    </tr>
                    
                    <tr>
                        <th>MexOn9bet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="209WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">209</th>
                    </tr>
                    
                    <tr>
                        <th>MexOn9win</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="240WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">240</th>
                    </tr>
                    
                    <tr>
                        <th>MexOriental</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="136WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">136</th>
                    </tr>
                    
                    <tr>
                        <th>MexP1</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="120WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">120</th>
                    </tr>
                    
                    <tr>
                        <th>MexP2</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="123WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">123</th>
                    </tr>
                    
                    <tr>
                        <th>MexP2pworld</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="117WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">117</th>
                    </tr>
                    
                    <tr>
                        <th>MexPangu</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="85WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">85</th>
                    </tr>
                    
                    <tr>
                        <th>MexPickplay24</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="198WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">198</th>
                    </tr>
                    
                    <tr>
                        <th>MexPl5</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="173WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">173</th>
                    </tr>
                    
                    <tr>
                        <th>MexPlay555</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="160WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">160</th>
                    </tr>
                    
                    <tr>
                        <th>MexQ11toto</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="243WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">243</th>
                    </tr>
                    
                    <tr>
                        <th>MexRWB</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="52WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">52</th>
                    </tr>
                    
                    <tr>
                        <th>MexRome</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="163WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">163</th>
                    </tr>
                    
                    <tr>
                        <th>MexRoti88</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="169WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">169</th>
                    </tr>
                    
                    <tr>
                        <th>MexRuby9</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="113WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">113</th>
                    </tr>
                    
                    <tr>
                        <th>MexS36bet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="73WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">73</th>
                    </tr>
                    
                    <tr>
                        <th>MexSbo</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="133WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">133</th>
                    </tr>
                    
                    <tr>
                        <th>MexSboUat</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="138WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">138</th>
                    </tr>
                    
                    <tr>
                        <th>MexSbobet111</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="222WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">222</th>
                    </tr>
                    
                    <tr>
                        <th>MexScs188</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="175WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">175</th>
                    </tr>
                    
                    <tr>
                        <th>MexScth</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="200WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">200</th>
                    </tr>
                    
                    <tr>
                        <th>MexSe99</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="244WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">244</th>
                    </tr>
                    
                    <tr>
                        <th>MexSexy168</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="116WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">116</th>
                    </tr>
                    
                    <tr>
                        <th>MexSexyHacker</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="277WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">277</th>
                    </tr>
                    
                    <tr>
                        <th>MexSexygame66</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="174WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">174</th>
                    </tr>
                    
                    <tr>
                        <th>MexSexymm</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="203WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">203</th>
                    </tr>
                    
                    <tr>
                        <th>MexSexyth</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="195WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">195</th>
                    </tr>
                    
                    <tr>
                        <th>MexShengBet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="47WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">47</th>
                    </tr>
                    
                    <tr>
                        <th>MexSignbet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="233WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">233</th>
                    </tr>
                    
                    <tr>
                        <th>MexSingbo55</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="110WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">110</th>
                    </tr>
                    
                    <tr>
                        <th>MexSlot33</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="207WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">207</th>
                    </tr>
                    
                    <tr>
                        <th>MexSolarbet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="181WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">181</th>
                    </tr>
                    
                    <tr>
                        <th>MexSpbet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="148WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">148</th>
                    </tr>
                    
                    <tr>
                        <th>MexStreamerAIG</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="263WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">263</th>
                    </tr>
                    
                    <tr>
                        <th>MexSun789</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="251WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">251</th>
                    </tr>
                    
                    <tr>
                        <th>MexSuperXClub</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="245WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">245</th>
                    </tr>
                    
                    <tr>
                        <th>MexSvo888</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="112WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">112</th>
                    </tr>
                    
                    <tr>
                        <th>MexSzweinet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="43WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">43</th>
                    </tr>
                    
                    <tr>
                        <th>MexTMTgaming</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="92WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">92</th>
                    </tr>
                    
                    <tr>
                        <th>MexTbsclubs</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="168WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">168</th>
                    </tr>
                    
                    <tr>
                        <th>MexTcg</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="143WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">143</th>
                    </tr>
                    
                    <tr>
                        <th>MexTcgseamless</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="229WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">229</th>
                    </tr>
                    
                    <tr>
                        <th>MexTfa</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="144WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">144</th>
                    </tr>
                    
                    <tr>
                        <th>MexTgvip</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="62WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">62</th>
                    </tr>
                    
                    <tr>
                        <th>MexTh5ace</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="127WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">127</th>
                    </tr>
                    
                    <tr>
                        <th>MexTigerii</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="72WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">72</th>
                    </tr>
                    
                    <tr>
                        <th>MexTitancraft</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="172WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">172</th>
                    </tr>
                    
                    <tr>
                        <th>MexTogel</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="49WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">49</th>
                    </tr>
                    
                    <tr>
                        <th>MexTopplay</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="250WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">250</th>
                    </tr>
                    
                    <tr>
                        <th>MexUBO</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="53WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">53</th>
                    </tr>
                    
                    <tr>
                        <th>MexUfa247</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="226WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">226</th>
                    </tr>
                    
                    <tr>
                        <th>MexV1scr</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="60WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">60</th>
                    </tr>
                    
                    <tr>
                        <th>MexViet8</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="128WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">128</th>
                    </tr>
                    
                    <tr>
                        <th>MexVivabet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="182WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">182</th>
                    </tr>
                    
                    <tr>
                        <th>MexVmwin</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="220WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">220</th>
                    </tr>
                    
                    <tr>
                        <th>MexVnc88</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="59WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">59</th>
                    </tr>
                    
                    <tr>
                        <th>MexWWbet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="149WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">149</th>
                    </tr>
                    
                    <tr>
                        <th>MexWasabi</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="211WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">211</th>
                    </tr>
                    
                    <tr>
                        <th>MexWc88</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="74WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">74</th>
                    </tr>
                    
                    <tr>
                        <th>MexWebet22</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="192WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">192</th>
                    </tr>
                    
                    <tr>
                        <th>MexWinbet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="223WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">223</th>
                    </tr>
                    
                    <tr>
                        <th>MexWingame</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="134WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">134</th>
                    </tr>
                    
                    <tr>
                        <th>MexWinningw88</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="206WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">206</th>
                    </tr>
                    
                    <tr>
                        <th>MexWseven</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="191WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">191</th>
                    </tr>
                    
                    <tr>
                        <th>MexWynn35</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="142WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">142</th>
                    </tr>
                    
                    <tr>
                        <th>MexXBB</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="261WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">261</th>
                    </tr>
                    
                    <tr>
                        <th>MexXinbo</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="145WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">145</th>
                    </tr>
                    
                    <tr>
                        <th>MexXingcai</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="165WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">165</th>
                    </tr>
                    
                    <tr>
                        <th>MexXingcai888</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="187WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">187</th>
                    </tr>
                    
                    <tr>
                        <th>MexXingyao666</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="214WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">214</th>
                    </tr>
                    
                    <tr>
                        <th>MexYb</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="115WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">115</th>
                    </tr>
                    
                    <tr>
                        <th>MexYfkj</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="153WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">153</th>
                    </tr>
                    
                    <tr>
                        <th>MexZch002</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="57WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">57</th>
                    </tr>
                    
                    <tr>
                        <th>MexZch008</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="104WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">104</th>
                    </tr>
                    
                    <tr>
                        <th>MexZch013</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="111WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">111</th>
                    </tr>
                    
                    <tr>
                        <th>MexZch014</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="183WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">183</th>
                    </tr>
                    
                    <tr>
                        <th>MexZch018</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="227WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">227</th>
                    </tr>
                    
                    <tr>
                        <th>MexZhousi</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="202WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">202</th>
                    </tr>
                    
                    <tr>
                        <th>MexZm5666</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="88WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">88</th>
                    </tr>
                    
                    <tr>
                        <th>Mexeuwinsg</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="238WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">238</th>
                    </tr>
                    
                    <tr>
                        <th>Mexharimaubet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="201WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">201</th>
                    </tr>
                    
                    <tr>
                        <th>Mexi8Club</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="177WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">177</th>
                    </tr>
                    
                    <tr>
                        <th>Mexibclub</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="171WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">171</th>
                    </tr>
                    
                    <tr>
                        <th>Mexifm789plus</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="179WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">179</th>
                    </tr>
                    
                    <tr>
                        <th>Mexisb888</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="236WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">236</th>
                    </tr>
                    
                    <tr>
                        <th>Mexiw88</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="139WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">139</th>
                    </tr>
                    
                    <tr>
                        <th>Mexlioncitybet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="230WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">230</th>
                    </tr>
                    
                    <tr>
                        <th>Mexmahagame66</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="235WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">235</th>
                    </tr>
                    
                    <tr>
                        <th>Mexmoon88</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="108WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">108</th>
                    </tr>
                    
                    <tr>
                        <th>Mexqkun</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="150WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">150</th>
                    </tr>
                    
                    <tr>
                        <th>Mexqq288</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="56WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">56</th>
                    </tr>
                    
                    <tr>
                        <th>MextestXingyao</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="213WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">213</th>
                    </tr>
                    
                    <tr>
                        <th>NETCAFE</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="3WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">3</th>
                    </tr>
                    
                    <tr>
                        <th>PHCAFE</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="35WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">35</th>
                    </tr>
                    
                    <tr>
                        <th>Site777ww</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="18WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">18</th>
                    </tr>
                    
                    <tr>
                        <th>Site928club</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="4WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">4</th>
                    </tr>
                    
                    <tr>
                        <th>SiteAe168</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="11WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">11</th>
                    </tr>
                    
                    <tr>
                        <th>SiteAgentJet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="24WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">24</th>
                    </tr>
                    
                    <tr>
                        <th>SiteAmbbet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="5WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">5</th>
                    </tr>
                    
                    <tr>
                        <th>SiteAvexis</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="7WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">7</th>
                    </tr>
                    
                    <tr>
                        <th>SiteBetSun</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="13WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">13</th>
                    </tr>
                    
                    <tr>
                        <th>SiteC9Clubs</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="28WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">28</th>
                    </tr>
                    
                    <tr>
                        <th>SiteCSRoyal88</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="27WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">27</th>
                    </tr>
                    
                    <tr>
                        <th>SiteDD88Bet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="32WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">32</th>
                    </tr>
                    
                    <tr>
                        <th>SiteECLBet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="41WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">41</th>
                    </tr>
                    
                    <tr>
                        <th>SiteGPMX</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="37WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">37</th>
                    </tr>
                    
                    <tr>
                        <th>SiteGama</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="15WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">15</th>
                    </tr>
                    
                    <tr>
                        <th>SiteGamaWL</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="26WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">26</th>
                    </tr>
                    
                    <tr>
                        <th>SiteGoal168</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="21WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">21</th>
                    </tr>
                    
                    <tr>
                        <th>SiteInCash</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="10WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">10</th>
                    </tr>
                    
                    <tr>
                        <th>SiteInplay</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="44WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">44</th>
                    </tr>
                    
                    <tr>
                        <th>SiteKaisarVenus</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="38WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">38</th>
                    </tr>
                    
                    <tr>
                        <th>SiteKaisargaming</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="30WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">30</th>
                    </tr>
                    
                    <tr>
                        <th>SiteKhmer</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="17WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">17</th>
                    </tr>
                    
                    <tr>
                        <th>SiteLebo</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="34WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">34</th>
                    </tr>
                    
                    <tr>
                        <th>SiteLeying</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="45WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">45</th>
                    </tr>
                    
                    <tr>
                        <th>SiteLoveBall365</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="12WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">12</th>
                    </tr>
                    
                    <tr>
                        <th>SiteMiiWin</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="8WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">8</th>
                    </tr>
                    
                    <tr>
                        <th>SiteProbet77</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="22WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">22</th>
                    </tr>
                    
                    <tr>
                        <th>SiteSb234</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="14WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">14</th>
                    </tr>
                    
                    <tr>
                        <th>SiteSin368</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="31WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">31</th>
                    </tr>
                    
                    <tr>
                        <th>SiteSlotCiti88</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="6WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">6</th>
                    </tr>
                    
                    <tr>
                        <th>SiteSureWin365</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="29WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">29</th>
                    </tr>
                    
                    <tr>
                        <th>SiteSzweinet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="19WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">19</th>
                    </tr>
                    
                    <tr>
                        <th>SiteTbkbet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="16WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">16</th>
                    </tr>
                    
                    <tr>
                        <th>SiteVegas79</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="9WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">9</th>
                    </tr>
                    
                    <tr>
                        <th>TestAWCApiAction</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="902WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">902</th>
                    </tr>
                    
                    <tr>
                        <th>TestDefaultApiAction</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="901WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">901</th>
                    </tr>
                    
                    <tr>
                        <th>TestLargeAmountSplitApiAction</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="903WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">903</th>
                    </tr>
                    
                    <tr>
                        <th>TestMPSBApiAction</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="904WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">904</th>
                    </tr>
                    
                    <tr>
                        <th>TestNETCAFEApiAction</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="905WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">905</th>
                    </tr>
                    
                    <tr>
                        <th>TestSite1xBetApiAction</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="906WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">906</th>
                    </tr>
                    
                    <tr>
                        <th>TestSiteAmbbetApiAction</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="907WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">907</th>
                    </tr>
                    
                    <tr>
                        <th>TestSiteSlotCiti88ApiAction</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="908WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">908</th>
                    </tr>
                    
                    <tr>
                        <th>UNITTest</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="999WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">999</th>
                    </tr>
                    
                    <tr>
                        <th>Venus928club</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="78WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">78</th>
                    </tr>
                    
                    <tr>
                        <th>VenusAWC</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="51WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">51</th>
                    </tr>
                    
                    <tr>
                        <th>VenusAWC2</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="253WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">253</th>
                    </tr>
                    
                    <tr>
                        <th>VenusAWC3</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="255WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">255</th>
                    </tr>
                    
                    <tr>
                        <th>VenusAWC4</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="257WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">257</th>
                    </tr>
                    
                    <tr>
                        <th>VenusAWC5</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="273WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">273</th>
                    </tr>
                    
                    <tr>
                        <th>VenusAWCA</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="265WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">265</th>
                    </tr>
                    
                    <tr>
                        <th>VenusAWCA2</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="267WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">267</th>
                    </tr>
                    
                    <tr>
                        <th>VenusAWCA3</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="269WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">269</th>
                    </tr>
                    
                    <tr>
                        <th>VenusAWCA4</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="271WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">271</th>
                    </tr>
                    
                    <tr>
                        <th>VenusAWCA5</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="275WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">275</th>
                    </tr>
                    
                    <tr>
                        <th>VenusAe888</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="23WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">23</th>
                    </tr>
                    
                    <tr>
                        <th>VenusAgentJet</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="25WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">25</th>
                    </tr>
                    
                    <tr>
                        <th>VenusAgp88</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="103WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">103</th>
                    </tr>
                    
                    <tr>
                        <th>VenusBcbaccarat</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="101WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">101</th>
                    </tr>
                    
                    <tr>
                        <th>VenusBcg</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="97WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">97</th>
                    </tr>
                    
                    <tr>
                        <th>VenusCWA</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="248WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">248</th>
                    </tr>
                    
                    <tr>
                        <th>VenusCasinoxb</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="107WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">107</th>
                    </tr>
                    
                    <tr>
                        <th>VenusGama</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="189WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">189</th>
                    </tr>
                    
                    <tr>
                        <th>VenusGamaWL</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="190WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">190</th>
                    </tr>
                    
                    <tr>
                        <th>VenusGamestone</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="137WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">137</th>
                    </tr>
                    
                    <tr>
                        <th>VenusMPSB</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="20WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">20</th>
                    </tr>
                    
                    <tr>
                        <th>VenusTgvip</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="63WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">63</th>
                    </tr>
                    
                    <tr>
                        <th>VenusV1scr</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="61WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">61</th>
                    </tr>
                    
                    <tr>
                        <th>siteZchwan</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="42WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">42</th>
                    </tr>
                    
                    <tr>
                        <th>venusGPMX</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="40WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">40</th>
                    </tr>
                    
                    <tr>
                        <th>venusMarcTest</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="997WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">997</th>
                    </tr>
                    
                    <tr>
                        <th>venusNETCAFE</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="33WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">33</th>
                    </tr>
                    
                    <tr>
                        <th>venusPHCAFE</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="36WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">36</th>
                    </tr>
                    
                    <tr>
                        <th>venusSenComm</th>
                        <th align="left">
                            <select style="width:50px" name="websiteEnable" id="89WebsiteEnable">
                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            </select>
                        </th>
                        <th style="display:none">89</th>
                    </tr>
                    
                    </thead>
                </table>
            </div>
            <div>
                <input type="submit" name="button" id="websiteSettingPrevBtn" class="redPacketBtn" value="Prev">
                <input type="submit" name="button" id="websiteSettingCancelBtn" class="redPacketBtn" value="Cancel" onclick="redirectHome();">
                <input type="submit" name="button" id="websiteSettingFinishBtn" class="redPacketBtn" value="Finish">
            </div>
        </div>
    </div>
</div>
</body>
</html>