function keyPress (~,eventdata)
global validPos m n mat newMat
enterNum = eventdata.Key;
%% 计算结果
if strcmp('return',enterNum)
    resultMat=mat+newMat;
    if isRepeat(resultMat)==0 || ismember(0,resultMat)
        helpdlg('结果不对哦')
    else
        helpdlg('恭喜你做对了！')
    end

%
elseif validPos==1
    delete(findobj(gcf,'type','text'));
    for i=1:9
        for j=1:9
            if newMat(j,i)>0
                text(50*i-30,50*j-30,num2str(newMat(j,i)),'Color','k','FontSize',14)
            end
        end
    end
    
    mat(n,m)=str2double(enterNum);
    for i=1:9
        for j=1:9
            if mat(j,i)>0
            text(50*i-30,50*j-30,num2str(mat(j,i)),'Color','b','FontSize',14)
            end
        end
    end
end
