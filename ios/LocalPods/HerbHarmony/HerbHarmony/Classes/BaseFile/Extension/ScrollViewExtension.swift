
//: Declare String Begin

/*: "Drop down to refresh" :*/
fileprivate let str_cellName:[Character] = ["D","r","o","p"," ","d","o","w","n"," ","t","o"," ","r"]
fileprivate let str_statusData:[Character] = ["e","f","r","e","s","h"]

/*: "Release Refresh" :*/
fileprivate let str_viewName:String = "false makeRelea"
fileprivate let str_videoContent:String = "smain"
fileprivate let str_partyData:[Character] = [" ","R","e","f","r","e","s","h"]

/*: "Refreshing" :*/
fileprivate let str_imageModelViewName:String = "height self height bottomRefresh"
fileprivate let str_colorTitle:String = "ING"

/*: "Pull up to load more" :*/
fileprivate let str_dataScaleAppContent:[Character] = ["P","u","l","l"," "]
fileprivate let str_tapText:String = "up to lresult print color"
fileprivate let str_titleBottomValue:String = "var right rowoad "

/*: "No more data." :*/
fileprivate let str_skipData:String = "No mscreen main self sign equal"
fileprivate let str_fileValue:String = "for start if if typeta."

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ScrollViewExtension.swift
//  AbroadTalking
//
//  Created by young on 2022/9/8.
//

//: import UIKit
import UIKit

//: extension UIScrollView {
extension UIScrollView {
    //: typealias CompletionBlock = () -> Void
    typealias CompletionBlock = () -> Void

    /// 下拉刷新
    //: func addHeaderRefresh(complection: @escaping CompletionBlock) {
    func reloadStart(complection: @escaping CompletionBlock) {
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MeanSunLanguageManager.shared.direction == .rightToLeft {
            //: let header = MJRefreshNormalHeader()
            let header = MJRefreshNormalHeader()
            //: header.setTitle("Drop down to refresh".localized, for: .idle)
            header.setTitle((String(str_cellName) + String(str_statusData)).localized, for: .idle)
            //: header.setTitle("Release Refresh".localized, for: .pulling)
            header.setTitle((String(str_viewName.suffix(5)) + str_videoContent.replacingOccurrences(of: "main", with: "e") + String(str_partyData)).localized, for: .pulling)
            //: header.setTitle("Refreshing".localized, for: .refreshing)
            header.setTitle((String(str_imageModelViewName.suffix(7)) + str_colorTitle.lowercased()).localized, for: .refreshing)
            //: header.lastUpdatedTimeLabel?.isHidden = true
            header.lastUpdatedTimeLabel?.isHidden = true

            //: self.mj_header = header
            self.mj_header = header
            //: self.mj_header?.refreshingBlock = {
            self.mj_header?.refreshingBlock = {
                //: complection()
                complection()
            }
            //: } else {
        } else {
            //: self.mj_header = MJRefreshNormalHeader {
            self.mj_header = MJRefreshNormalHeader {
                //: complection()
                complection()
            }
        }
    }

    /// 上拉加载
    //: func addFooterRefresh(complection: @escaping CompletionBlock) {
    func deadlineComplection(complection: @escaping CompletionBlock) {
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MeanSunLanguageManager.shared.direction == .rightToLeft {
            //: let footer = MJRefreshAutoNormalFooter()
            let footer = MJRefreshAutoNormalFooter()
            //: footer.setTitle("Pull up to load more".localized, for: .idle)
            footer.setTitle((String(str_dataScaleAppContent) + String(str_tapText.prefix(7)) + String(str_titleBottomValue.suffix(4)) + "more").localized, for: .idle)
            //: footer.setTitle("Release Refresh".localized, for: .pulling)
            footer.setTitle((String(str_viewName.suffix(5)) + str_videoContent.replacingOccurrences(of: "main", with: "e") + String(str_partyData)).localized, for: .pulling)
            //: footer.setTitle("Refreshing".localized, for: .refreshing)
            footer.setTitle((String(str_imageModelViewName.suffix(7)) + str_colorTitle.lowercased()).localized, for: .refreshing)
            //: footer.setTitle("No more data.".localized, for: .noMoreData)
            footer.setTitle((String(str_skipData.prefix(4)) + "ore da" + String(str_fileValue.suffix(3))).localized, for: .noMoreData)
            //: self.mj_footer = footer
            self.mj_footer = footer
            //: self.mj_footer?.refreshingBlock = {
            self.mj_footer?.refreshingBlock = {
                //: complection()
                complection()
            }
            //: } else {
        } else {
            //: self.mj_footer = MJRefreshAutoNormalFooter {
            self.mj_footer = MJRefreshAutoNormalFooter {
                //: complection()
                complection()
            }
        }
    }

    /// 结束刷新
    //: func endRefresh() {
    func cellIndex() {
        //: if (self.mj_header?.isRefreshing) != nil {
        if (self.mj_header?.isRefreshing) != nil {
            //: self.mj_header?.endRefreshing()
            self.mj_header?.endRefreshing()
        }
        //: if (self.mj_footer?.isRefreshing) != nil {
        if (self.mj_footer?.isRefreshing) != nil {
            //: self.mj_footer?.endRefreshing()
            self.mj_footer?.endRefreshing()
        }
    }
}
