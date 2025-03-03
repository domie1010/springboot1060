const base = {
    get() {
        return {
            url : "http://localhost:8080/fanzhapingtai/",
            name: "fanzhapingtai",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/fanzhapingtai/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "反欺诈平台"
        } 
    }
}
export default base
