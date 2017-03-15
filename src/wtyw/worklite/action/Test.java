package wtyw.worklite.action;

import java.util.Random;
import wtyw.worklite.common.GenerateID;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
        int[] intRet=new int[6];
        int intRd = 0;
        int count=0;
        int flag=0;
        for(int j=1;j<10;j++){
			System.out.println(System.currentTimeMillis());
			Random rdm = new Random(System.currentTimeMillis());
			System.out.println(Math.abs(rdm.nextInt())%99999999+1);
			intRd = Math.abs(rdm.nextInt())%99999999+1;
			for(int i=0;i<count;i++){
				if(intRet[i]==intRd){
					flag=1;
				break;
				}else{
					flag=0;
				}
			}
			if(flag==0){
				intRet[count]=intRd;
				count++;
			}
			for(int t=0;t<6;t++){
				System.out.println(t+"->"+intRet[t]);
			}

					}
			System.out.println(new GenerateID().generateKnowledgeId());
			String first= "chenzhujun".substring(0, 1);
			System.out.println(first);
			
	}

}
