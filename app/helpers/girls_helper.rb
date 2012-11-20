#coding=utf-8
module GirlsHelper
  def title_girl(girl)
    keywords = girl.name_cn
    keywords += '_' + girl.name_cn + '电影'
    keywords += '_' + girl.name_cn + '最新电影'
    keywords += '_' + girl.name_cn + '图片'
    keywords += '_' + girl.name_cn + '全集'
    keywords += '_' + '(女优大全)'
    keywords
  end
  def keywords_girl(girl)
    keywords = girl.name_cn
    keywords += '，' + girl.name_cn + '电影'
    keywords += '，' + girl.name_cn + '的电影'
    keywords += '，' + girl.name_cn + '全集'
    keywords += '，' + girl.name_cn + '的全集'
    keywords += '，' + girl.name_cn + '图片'
    keywords += '，' + girl.name
    keywords += '，' +  girl.name_en
    return keywords
  end
end
