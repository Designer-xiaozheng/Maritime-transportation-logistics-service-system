<template>
	<el-main class="bg">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','teacher_job_number') || $check_field('add','teacher_job_number') || $check_field('set','teacher_job_number')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="教师工号" prop="teacher_job_number">
						<div v-if="user_group !== '管理员'">
							{{ get_user_session_teacher_job_number(form['teacher_job_number']) }}
							<!--<el-input id="business_name" v-model="form['teacher_job_number']" placeholder="请输入教师工号"-->
							<!--v-if="user_group === '管理员' || (form['class_grade_id'] && $check_field('set','teacher_job_number')) || (!form['class_grade_id'] && $check_field('add','teacher_job_number'))" :disabled="disabledObj['teacher_job_number_isDisabled']"></el-input>-->
							<!--<div v-else-if="$check_field('get','teacher_job_number')">{{form['teacher_job_number']}}</div>-->
							<el-select v-if="user_group === '管理员' || (form['class_grade_id'] && $check_field('set','teacher_job_number')) || (!form['class_grade_id'] && $check_field('add','teacher_job_number'))" id="teacher_job_number" v-model="form['teacher_job_number']" :disabled="disabledObj['teacher_job_number_isDisabled']">
								<el-option v-for="o in list_user_teacher_job_number" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
							<el-select v-else-if="$check_field('get','teacher_job_number')" id="teacher_job_number" v-model="form['teacher_job_number']" :disabled="true">
								<el-option v-for="o in list_user_teacher_job_number" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
						</div>
						<el-select v-else id="teacher_job_number" v-model="form['teacher_job_number']" :disabled="disabledObj['teacher_job_number_isDisabled']">
							<el-option v-for="o in list_user_teacher_job_number" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','teacher_name') || $check_field('add','teacher_name') || $check_field('set','teacher_name')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="教师姓名" prop="teacher_name">
					<el-input id="teacher_name" v-model="form['teacher_name']" placeholder="请输入教师姓名"
							  v-if="user_group === '管理员' || (form['class_grade_id'] && $check_field('set','teacher_name')) || (!form['class_grade_id'] && $check_field('add','teacher_name'))" :disabled="disabledObj['teacher_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','teacher_name')">{{form['teacher_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','test_name') || $check_field('add','test_name') || $check_field('set','test_name')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="考试名称" prop="test_name">
					<el-input id="test_name" v-model="form['test_name']" placeholder="请输入考试名称"
							  v-if="user_group === '管理员' || (form['class_grade_id'] && $check_field('set','test_name')) || (!form['class_grade_id'] && $check_field('add','test_name'))" :disabled="disabledObj['test_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','test_name')">{{form['test_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','class_name') || $check_field('add','class_name') || $check_field('set','class_name')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="班级名称" prop="class_name">
					<el-input id="class_name" v-model="form['class_name']" placeholder="请输入班级名称"
							  v-if="user_group === '管理员' || (form['class_grade_id'] && $check_field('set','class_name')) || (!form['class_grade_id'] && $check_field('add','class_name'))" :disabled="disabledObj['class_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','class_name')">{{form['class_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','number_of_examinees') || $check_field('add','number_of_examinees') || $check_field('set','number_of_examinees')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="考试人数" prop="number_of_examinees">
					<el-input-number id="number_of_examinees" v-model.number="form['number_of_examinees']"
						v-if="user_group === '管理员' || (form['class_grade_id'] && $check_field('set','number_of_examinees')) || (!form['class_grade_id'] && $check_field('add','number_of_examinees'))"></el-input-number>
					<div v-else-if="$check_field('get','number_of_examinees')">{{form['number_of_examinees']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','highest_score') || $check_field('add','highest_score') || $check_field('set','highest_score')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="最高分" prop="highest_score">
					<el-input id="highest_score" v-model="form['highest_score']" placeholder="请输入最高分"
							  v-if="user_group === '管理员' || (form['class_grade_id'] && $check_field('set','highest_score')) || (!form['class_grade_id'] && $check_field('add','highest_score'))" :disabled="disabledObj['highest_score_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','highest_score')">{{form['highest_score']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','lowest_score') || $check_field('add','lowest_score') || $check_field('set','lowest_score')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="最低分" prop="lowest_score">
					<el-input id="lowest_score" v-model="form['lowest_score']" placeholder="请输入最低分"
							  v-if="user_group === '管理员' || (form['class_grade_id'] && $check_field('set','lowest_score')) || (!form['class_grade_id'] && $check_field('add','lowest_score'))" :disabled="disabledObj['lowest_score_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','lowest_score')">{{form['lowest_score']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','average') || $check_field('add','average') || $check_field('set','average')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="平均分" prop="average">
					<el-input id="average" v-model="form['average']" placeholder="请输入平均分"
							  v-if="user_group === '管理员' || (form['class_grade_id'] && $check_field('set','average')) || (!form['class_grade_id'] && $check_field('add','average'))" :disabled="disabledObj['average_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','average')">{{form['average']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','remarks') || $check_field('add','remarks') || $check_field('set','remarks')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="备注" prop="remarks">
					<el-input type="textarea" id="remarks" v-model="form['remarks']" placeholder="请输入备注"
						v-if="user_group === '管理员' || (form['class_grade_id'] && $check_field('set','remarks')) || (!form['class_grade_id'] && $check_field('add','remarks'))" :disabled="disabledObj['remarks_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','remarks')">{{form['remarks']}}</div>
				</el-form-item>
			</el-col>
			<el-col :xs="24" :sm="12" :lg="8">
				<el-form-item>
					<el-button type="primary" @click="submit()">提交</el-button>
					<el-button @click="cancel()">取消</el-button>
				</el-form-item>
			</el-col>

		</el-form>
	</el-main>
</template>

<script>
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		data() {
			return {
				field: "class_grade_id",
				url_add: "~/api/class_grade/add?",
				url_set: "~/api/class_grade/set?",
				url_get_obj: "~/api/class_grade/get_obj?",
				url_upload: "~/api/class_grade/upload?",

				query: {
					"class_grade_id": 0,
				},

				form: {
					"teacher_job_number": 0, // 教师工号
					"teacher_name":'', // 教师姓名
					"test_name":'', // 考试名称
					"class_name":'', // 班级名称
					"number_of_examinees":0, // 考试人数
					"highest_score":'', // 最高分
					"lowest_score":'', // 最低分
					"average":'', // 平均分
					"remarks":'', // 备注
					"class_grade_id": 0, // ID

				},
				disabledObj:{
					"teacher_job_number_isDisabled": false,
					"teacher_name_isDisabled": false,
					"test_name_isDisabled": false,
					"class_name_isDisabled": false,
					"highest_score_isDisabled": false,
					"lowest_score_isDisabled": false,
					"average_isDisabled": false,
					"remarks_isDisabled": false,
				},
				// 用户列表
				list_user_teacher_job_number: [],
				// 用户组
				group_user_teacher_job_number: "",

			}
		},
		methods: {
			/**
			 * 获取教师用户列表
			 */
			async get_list_user_teacher_job_number() {
                // if(this.user_group !== "管理员" && this.form["teacher_job_number"] === 0) {
                //     this.form["teacher_job_number"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=教师");
                if(json.result && json.result.list){
                    this.list_user_teacher_job_number = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
			/**
			 * 获取教师用户组
			 */
			async get_group_user_teacher_job_number() {
				this.form["teacher_job_number"] = this.user.user_id;
				var json = await this.$get("~/api/user_group/get_obj?name=教师");
				if(json.result && json.result.obj){
					this.group_user_teacher_job_number = json.result.obj;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			get_user_session_teacher_job_number(id){
				var _this = this;
				var user_id = {"user_id":id}
				var url = "~/api/"+_this.group_user_teacher_job_number.source_table+"/get_obj?"
				this.$get(url, user_id, function(res) {
					if (res.result && res.result.obj) {
						var arr = []
						for (let key in res.result.obj) {
							arr.push(key)
						}
						var arrForm = []
						for (let key in _this.form) {
							arrForm.push(key)
						}
						for (var i=0;i<arr.length;i++){
							for (var j=0;j<arrForm.length;j++){
								if (arr[i]===arrForm[j]){
									if (arr[i]!=="teacher_job_number") {
										_this.form[arrForm[j]] = res.result.obj[arr[i]]
										_this.disabledObj[arrForm[j] + '_isDisabled'] = true
										break;
									}else {
										_this.disabledObj[arrForm[j] + '_isDisabled'] = true
									}
								}
							}
						}
					}
				});
			},
			get_user_teacher_job_number(id){
				var obj = this.list_user_teacher_job_number.getObj({"user_id":id});
				var ret = "";
				if(obj){
					if(obj.nickname){
						ret = obj.nickname;}
					else{
						ret = obj.username;
					}
				}
				return ret;
			},

			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
				/**
				* 请求列表前
				* @param {Object} param
				*/
				var user_group = this.user.user_group;
				if (user_group !== "管理员") {
					switch (user_group) {
						case "教师工号":
							if(param["teacher_job_number"] > 0){
								param["teacher_job_number"] = this.user.user_id;
							}
							break;
					}
				}
				if(this.form && form){
					Object.keys(this.form).forEach(key => {
						Object.keys(form).forEach(dbKey => {
							// if(dbKey === "charging_standard"){
							// 	this.form['charging_rules'] = form[dbKey];
							// 	this.disabledObj['charging_rules_isDisabled'] = true;
							// };
							if(key === dbKey){
								this.disabledObj[key+'_isDisabled'] = true;
							}
						})
					})
				}
				$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){

			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/class_grade/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/class_grade/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/class_grade/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/class_grade/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/class_grade/view','get');
					console.log(bl ? "你有视图查询权限视作有查询权限" : "你没有视图查询权限");
				}

				console.log(bl ? "具有当前页面的查看权，请注意这不代表你有字段的查看权" : "无权查看当前页，请注意即便有字段查询权限没有页面查询权限也不行");

				return bl;
			},
			/**
			 * 上传文件
			 * @param {Object} param
			 */
			uploadimg(param) {
				this.uploadFile(param.file, "avatar");
			},

		},
		created() {
			this.get_list_user_teacher_job_number();
			this.get_group_user_teacher_job_number();
		}
	}
</script>

<style>
	.avatar-uploader .el-upload {
		border: 1px dashed #d9d9d9;
		border-radius: 6px;
		cursor: pointer;
		position: relative;
		overflow: hidden;
	}

	.avatar-uploader .el-upload:hover {
		border-color: #409EFF;
	}

	.avatar-uploader-icon {
		font-size: 28px;
		color: #8c939d;
		width: 178px;
		height: 178px;
		line-height: 178px;
		text-align: center;
	}

	.avatar {
		width: 178px;
		height: 178px;
		display: block;
	}
</style>
