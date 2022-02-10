const saleo = document.querySelector('input[name=saleo]');
const pcode = document.querySelector('input[name=pcode]');
const saledate = document.querySelector('input[name=saledate]');
const scode = document.querySelector('input[name=scode]');
const amount = document.querySelector('input[name=amount]');

function Check() {
			if(!saleo.value){
				alert('비번호가 입력되지 않았습니다.');
				saleo.focus();
				return false;
			}
			 if(!pcode.value){
				alert('상품코드가 입력되지 않았습니다.');
				pcode.focus();
				return false;
			}
			 if(!saledate.value){
				alert('판매날짜가 입력되지 않았습니다.');
				saledate.focus();
				return false;
			}
			 if(!scode.value){
				alert('매장코드가 입력되지 않았습니다.');
				scode.focus();
				return false;
			}
			 if(!amount.value){
				alert('수량이 입력되지 않았습니다.');
				amount.focus();
				return false;
			}
			 alert('판매정보가 정강적으로 등록되었습니다');
			 return true;
		}
		function formRest(){
			alert('정보를 지우고 처음부터 다시 입력합니다');
			
			saleo.value='';
			pcode.value='';
			saledate.value='';
			scode.value='';
			amount.value='';
		}