//
//  ViewController.swift
//  SmartAuction
//
//  Created by A_Mcflurry on 2/22/24.
//

import UIKit
import SwiftSoup

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .red
	}

	// Testing
	func parsing() {
		let data = NSMutableData(data: "bubwLocGubun=1".data(using: .utf8)!)
		data.append("&jiwonNm=%BC%AD%BF%EF%C1%DF%BE%D3%C1%F6%B9%E6%B9%FD%BF%F8".data(using: .utf8)!)
		data.append("&jpDeptCd=000000".data(using: .utf8)!)
		data.append("&daepyoSidoCd=".data(using: .utf8)!)
		data.append("&daepyoSiguCd=".data(using: .utf8)!)
		data.append("&daepyoDongCd=".data(using: .utf8)!)
		data.append("&notifyLoc=on".data(using: .utf8)!)
		data.append("&rd1Cd=".data(using: .utf8)!)
		data.append("&rd2Cd=".data(using: .utf8)!)
		data.append("&realVowel=35207_45207".data(using: .utf8)!)
		data.append("&rd3Rd4Cd=".data(using: .utf8)!)
		data.append("&notifyRealRoad=on".data(using: .utf8)!)
		data.append("&saYear=2024".data(using: .utf8)!)
		data.append("&saSer=".data(using: .utf8)!)
		data.append("&ipchalGbncd=000331".data(using: .utf8)!)
		data.append("&termStartDt=2024.02.22".data(using: .utf8)!)
		data.append("&termEndDt=2024.03.07".data(using: .utf8)!)
		data.append("&lclsUtilCd=".data(using: .utf8)!)
		data.append("&mclsUtilCd=".data(using: .utf8)!)
		data.append("&sclsUtilCd=".data(using: .utf8)!)
		data.append("&gamEvalAmtGuganMin=".data(using: .utf8)!)
		data.append("&gamEvalAmtGuganMax=".data(using: .utf8)!)
		data.append("&notifyMinMgakPrcMin=".data(using: .utf8)!)
		data.append("&notifyMinMgakPrcMax=".data(using: .utf8)!)
		data.append("&areaGuganMin=".data(using: .utf8)!)
		data.append("&areaGuganMax=".data(using: .utf8)!)
		data.append("&yuchalCntGuganMin=".data(using: .utf8)!)
		data.append("&yuchalCntGuganMax=".data(using: .utf8)!)
		data.append("&notifyMinMgakPrcRateMin=".data(using: .utf8)!)
		data.append("&notifyMinMgakPrcRateMax=".data(using: .utf8)!)
		data.append("&srchJogKindcd=".data(using: .utf8)!)
		data.append("&mvRealGbncd=00031R".data(using: .utf8)!)
		data.append("&srnID=PNO102001".data(using: .utf8)!)
		data.append("&_NAVI_CMD=".data(using: .utf8)!)
		data.append("&_NAVI_SRNID=".data(using: .utf8)!)
		data.append("&_SRCH_SRNID=PNO102001".data(using: .utf8)!)
		data.append("&_CUR_CMD=InitMulSrch.laf".data(using: .utf8)!)
		data.append("&_CUR_SRNID=PNO102001".data(using: .utf8)!)
		data.append("&_NEXT_CMD=RetrieveRealEstMulDetailList.laf".data(using: .utf8)!)
		data.append("&_NEXT_SRNID=PNO102002".data(using: .utf8)!)
		data.append("&_PRE_SRNID=".data(using: .utf8)!)
		data.append("&_LOGOUT_CHK=".data(using: .utf8)!)
		data.append("&_FORM_YN=Y".data(using: .utf8)!)

		let url = URL(string: "https://www.courtauction.go.kr/RetrieveRealEstMulDetailList.laf")!
		let headers = [
			 "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7",
			 "Accept-Language": "ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7",
			 "Cache-Control": "max-age=0",
			 "Connection": "keep-alive",
			 "Content-Type": "application/x-www-form-urlencoded",
			 "Cookie": "WMONID=Q0XfaCzuGZi; JSESSIONID=I6UHPbmX6iBvf0xa10u1ksET2s1fjN1pQsZtKD4M9XjdenyLnEnvxC2bWC1isRpQ.amV1c19kb21haW4vYWlzMg==; realJiwonNm=%BC%AD%BF%EF%C1%DF%BE%D3%C1%F6%B9%E6%B9%FD%BF%F8; daepyoSidoCd=; daepyoSiguCd=; rd1Cd=; rd2Cd=; realVowel=35207_45207; locIdx=202101300006101; toMul=%BC%AD%BF%EF%C1%DF%BE%D3%C1%F6%B9%E6%B9%FD%BF%F8%2C20210130000610%2C1%2C20240222%2CB%5E",
			 "Origin": "https://www.courtauction.go.kr",
			 "Referer": "https://www.courtauction.go.kr/InitMulSrch.laf",
			 "Sec-Fetch-Dest": "frame",
			 "Sec-Fetch-Mode": "navigate",
			 "Sec-Fetch-Site": "same-origin",
			 "Sec-Fetch-User": "?1",
			 "Upgrade-Insecure-Requests": "1",
			 "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36",
			 "sec-ch-ua": "\"Not A(Brand\";v=\"99\", \"Google Chrome\";v=\"121\", \"Chromium\";v=\"121\"",
			 "sec-ch-ua-mobile": "?0",
			 "sec-ch-ua-platform": "\"macOS\""
		]

		var request = URLRequest(url: url)
		request.httpMethod = "POST"
		request.allHTTPHeaderFields = headers
		request.httpBody = data as Data

		let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
			 if let error = error {
				  print(error)
			 } else if let data = data {
				  let str = String(data: data, encoding: .utf8)
				  print(str ?? "")
			 }
		}

		task.resume()
	}
}

