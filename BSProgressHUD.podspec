Pod::Spec.new do |s|
    s.name         = 'BSProgressHUD'
    s.version      = '0.0.1'
    s.summary      = '创业软件iOS项目的一款视图加载提示HUD'
    s.homepage     = 'https://github.com/wangtongs/BSProgressHUD'
    s.license      = 'MIT'
    s.authors      = {'wangtong' => 'wangtongKings@163.com'}
    s.platform     = :ios
    s.source       = {:git => 'https://github.com/wangtongs/BSProgressHUD.git', :tag => s.version}
    s.source_files = 'BSProgressHUD/Classes/*.{h,m}'
    s.requires_arc = true
end