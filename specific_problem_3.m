function [c_obj,A1,b1,v1,v2] = specific_problem_3(F,Fi,c,ci,pi_,yi,u)
c_obj=[pi_(1)*Fi(1);pi_(2)*Fi(2);pi_(3)*Fi(3)];
A1=[-Fi(1)/(F+Fi(1)),0,0;
    -Fi(1)*yi(1)/(F+Fi(1)+Fi(2)),-Fi(2)/(F+Fi(1)+Fi(2)),0];
b1=[u-((F*c+Fi(1)*ci(1))/(F+Fi(1)));
    u-((F*c*yi(1)+Fi(1)*ci(1)*yi(1)+Fi(2)*ci(2))/(F+Fi(1)+Fi(2)))];
v1=[0;0;0];
v2=[ci(1);ci(2);ci(3)];
end