; ModuleID = '<stdin>'
source_filename = "/tmp/tmpriweriyt.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %min1 = alloca [100 x i32], align 16
  %min2 = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %min1) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %min2) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc179, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc180, %for.inc179 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end181

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc11, %for.inc10 ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %j.0, %1
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %k.0, %2
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom7 = sext i32 %k.0 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx8)
  %inc = add nsw i32 %k.0, 1
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %inc11 = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !12

for.end12:                                        ; preds = %for.cond1
  br label %while.cond

while.cond:                                       ; preds = %for.end176, %for.end12
  %sum.0 = phi i32 [ 0, %for.end12 ], [ %add, %for.end176 ]
  %p.0 = phi i32 [ 0, %for.end12 ], [ %inc177, %for.end176 ]
  %cmp13 = icmp slt i32 %p.0, %1
  br i1 %cmp13, label %while.body, label %for.inc179

while.body:                                       ; preds = %while.cond
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc42, %while.body
  %m.0 = phi i32 [ 0, %while.body ], [ %inc43, %for.inc42 ]
  %sub = sub nsw i32 %1, %p.0
  %cmp15 = icmp slt i32 %m.0, %sub
  br i1 %cmp15, label %for.body16, label %for.end44

for.body16:                                       ; preds = %for.cond14
  %idxprom17 = sext i32 %m.0 to i64
  %arrayidx18 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom17
  %3 = load i32, ptr %arrayidx18, align 16, !tbaa !5
  %arrayidx21 = getelementptr inbounds [100 x i32], ptr %min1, i64 0, i64 %idxprom17
  store i32 %3, ptr %arrayidx21, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc39, %for.body16
  %k.1 = phi i32 [ 0, %for.body16 ], [ %inc40, %for.inc39 ]
  %cmp24 = icmp slt i32 %k.1, %sub
  br i1 %cmp24, label %for.body25, label %for.inc42

for.body25:                                       ; preds = %for.cond22
  %4 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %idxprom30 = sext i32 %k.1 to i64
  %arrayidx31 = getelementptr inbounds [100 x i32], ptr %arrayidx18, i64 0, i64 %idxprom30
  %5 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %cmp32 = icmp sgt i32 %4, %5
  br i1 %cmp32, label %if.then, label %for.inc39

if.then:                                          ; preds = %for.body25
  store i32 %5, ptr %arrayidx21, align 4, !tbaa !5
  br label %for.inc39

for.inc39:                                        ; preds = %for.body25, %if.then
  %inc40 = add nsw i32 %k.1, 1
  br label %for.cond22, !llvm.loop !13

for.inc42:                                        ; preds = %for.cond22
  %inc43 = add nsw i32 %m.0, 1
  br label %for.cond14, !llvm.loop !14

for.end44:                                        ; preds = %for.cond14
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc67, %for.end44
  %z.0 = phi i32 [ 0, %for.end44 ], [ %inc68, %for.inc67 ]
  %cmp47 = icmp slt i32 %z.0, %sub
  br i1 %cmp47, label %for.body48, label %for.end69

for.body48:                                       ; preds = %for.cond45
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc64, %for.body48
  %x.0 = phi i32 [ 0, %for.body48 ], [ %inc65, %for.inc64 ]
  %cmp51 = icmp slt i32 %x.0, %sub
  br i1 %cmp51, label %for.inc64, label %for.inc67

for.inc64:                                        ; preds = %for.cond49
  %idxprom53 = sext i32 %z.0 to i64
  %arrayidx54 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom53
  %idxprom55 = sext i32 %x.0 to i64
  %arrayidx56 = getelementptr inbounds [100 x i32], ptr %arrayidx54, i64 0, i64 %idxprom55
  %6 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %arrayidx58 = getelementptr inbounds [100 x i32], ptr %min1, i64 0, i64 %idxprom53
  %7 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %sub59 = sub nsw i32 %6, %7
  store i32 %sub59, ptr %arrayidx56, align 4, !tbaa !5
  %inc65 = add nsw i32 %x.0, 1
  br label %for.cond49, !llvm.loop !15

for.inc67:                                        ; preds = %for.cond49
  %inc68 = add nsw i32 %z.0, 1
  br label %for.cond45, !llvm.loop !16

for.end69:                                        ; preds = %for.cond45
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc101, %for.end69
  %m.1 = phi i32 [ 0, %for.end69 ], [ %inc102, %for.inc101 ]
  %cmp72 = icmp slt i32 %m.1, %sub
  br i1 %cmp72, label %for.body73, label %for.end103

for.body73:                                       ; preds = %for.cond70
  %idxprom75 = sext i32 %m.1 to i64
  %arrayidx76 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom75
  %8 = load i32, ptr %arrayidx76, align 4, !tbaa !5
  %arrayidx78 = getelementptr inbounds [100 x i32], ptr %min2, i64 0, i64 %idxprom75
  store i32 %8, ptr %arrayidx78, align 4, !tbaa !5
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc98, %for.body73
  %k.2 = phi i32 [ 0, %for.body73 ], [ %inc99, %for.inc98 ]
  %cmp81 = icmp slt i32 %k.2, %sub
  br i1 %cmp81, label %for.body82, label %for.inc101

for.body82:                                       ; preds = %for.cond79
  %9 = load i32, ptr %arrayidx78, align 4, !tbaa !5
  %idxprom85 = sext i32 %k.2 to i64
  %arrayidx86 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom85
  %arrayidx88 = getelementptr inbounds [100 x i32], ptr %arrayidx86, i64 0, i64 %idxprom75
  %10 = load i32, ptr %arrayidx88, align 4, !tbaa !5
  %cmp89 = icmp sgt i32 %9, %10
  br i1 %cmp89, label %if.then90, label %for.inc98

if.then90:                                        ; preds = %for.body82
  store i32 %10, ptr %arrayidx78, align 4, !tbaa !5
  br label %for.inc98

for.inc98:                                        ; preds = %for.body82, %if.then90
  %inc99 = add nsw i32 %k.2, 1
  br label %for.cond79, !llvm.loop !17

for.inc101:                                       ; preds = %for.cond79
  %inc102 = add nsw i32 %m.1, 1
  br label %for.cond70, !llvm.loop !18

for.end103:                                       ; preds = %for.cond70
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc126, %for.end103
  %z.1 = phi i32 [ 0, %for.end103 ], [ %inc127, %for.inc126 ]
  %cmp106 = icmp slt i32 %z.1, %sub
  br i1 %cmp106, label %for.body107, label %for.end128

for.body107:                                      ; preds = %for.cond104
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc123, %for.body107
  %x.1 = phi i32 [ 0, %for.body107 ], [ %inc124, %for.inc123 ]
  %cmp110 = icmp slt i32 %x.1, %sub
  br i1 %cmp110, label %for.inc123, label %for.inc126

for.inc123:                                       ; preds = %for.cond108
  %idxprom112 = sext i32 %z.1 to i64
  %arrayidx113 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom112
  %idxprom114 = sext i32 %x.1 to i64
  %arrayidx115 = getelementptr inbounds [100 x i32], ptr %arrayidx113, i64 0, i64 %idxprom114
  %11 = load i32, ptr %arrayidx115, align 4, !tbaa !5
  %arrayidx117 = getelementptr inbounds [100 x i32], ptr %min2, i64 0, i64 %idxprom114
  %12 = load i32, ptr %arrayidx117, align 4, !tbaa !5
  %sub118 = sub nsw i32 %11, %12
  store i32 %sub118, ptr %arrayidx115, align 4, !tbaa !5
  %inc124 = add nsw i32 %x.1, 1
  br label %for.cond108, !llvm.loop !19

for.inc126:                                       ; preds = %for.cond108
  %inc127 = add nsw i32 %z.1, 1
  br label %for.cond104, !llvm.loop !20

for.end128:                                       ; preds = %for.cond104
  %arrayidx129 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 1
  %arrayidx130 = getelementptr inbounds [100 x i32], ptr %arrayidx129, i64 0, i64 1
  %13 = load i32, ptr %arrayidx130, align 4, !tbaa !5
  %add = add nsw i32 %13, %sum.0
  br label %for.cond131

for.cond131:                                      ; preds = %for.inc151, %for.end128
  %z.2 = phi i32 [ 0, %for.end128 ], [ %inc152, %for.inc151 ]
  %cmp133 = icmp slt i32 %z.2, %sub
  br i1 %cmp133, label %for.body134, label %for.end153

for.body134:                                      ; preds = %for.cond131
  br label %for.cond135

for.cond135:                                      ; preds = %for.inc148, %for.body134
  %m.2 = phi i32 [ 1, %for.body134 ], [ %add141, %for.inc148 ]
  %cmp137 = icmp slt i32 %m.2, %sub
  br i1 %cmp137, label %for.inc148, label %for.inc151

for.inc148:                                       ; preds = %for.cond135
  %idxprom139 = sext i32 %z.2 to i64
  %arrayidx140 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom139
  %add141 = add nsw i32 %m.2, 1
  %idxprom142 = sext i32 %add141 to i64
  %arrayidx143 = getelementptr inbounds [100 x i32], ptr %arrayidx140, i64 0, i64 %idxprom142
  %14 = load i32, ptr %arrayidx143, align 4, !tbaa !5
  %idxprom146 = sext i32 %m.2 to i64
  %arrayidx147 = getelementptr inbounds [100 x i32], ptr %arrayidx140, i64 0, i64 %idxprom146
  store i32 %14, ptr %arrayidx147, align 4, !tbaa !5
  br label %for.cond135, !llvm.loop !21

for.inc151:                                       ; preds = %for.cond135
  %inc152 = add nsw i32 %z.2, 1
  br label %for.cond131, !llvm.loop !22

for.end153:                                       ; preds = %for.cond131
  br label %for.cond154

for.cond154:                                      ; preds = %for.inc174, %for.end153
  %z.3 = phi i32 [ 0, %for.end153 ], [ %inc175, %for.inc174 ]
  %cmp156 = icmp slt i32 %z.3, %sub
  br i1 %cmp156, label %for.body157, label %for.end176

for.body157:                                      ; preds = %for.cond154
  br label %for.cond158

for.cond158:                                      ; preds = %for.inc171, %for.body157
  %m.3 = phi i32 [ 1, %for.body157 ], [ %add162, %for.inc171 ]
  %cmp160 = icmp slt i32 %m.3, %sub
  br i1 %cmp160, label %for.inc171, label %for.inc174

for.inc171:                                       ; preds = %for.cond158
  %add162 = add nsw i32 %m.3, 1
  %idxprom163 = sext i32 %add162 to i64
  %arrayidx164 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom163
  %idxprom165 = sext i32 %z.3 to i64
  %arrayidx166 = getelementptr inbounds [100 x i32], ptr %arrayidx164, i64 0, i64 %idxprom165
  %15 = load i32, ptr %arrayidx166, align 4, !tbaa !5
  %idxprom167 = sext i32 %m.3 to i64
  %arrayidx168 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom167
  %arrayidx170 = getelementptr inbounds [100 x i32], ptr %arrayidx168, i64 0, i64 %idxprom165
  store i32 %15, ptr %arrayidx170, align 4, !tbaa !5
  br label %for.cond158, !llvm.loop !23

for.inc174:                                       ; preds = %for.cond158
  %inc175 = add nsw i32 %z.3, 1
  br label %for.cond154, !llvm.loop !24

for.end176:                                       ; preds = %for.cond154
  %inc177 = add nsw i32 %p.0, 1
  br label %while.cond, !llvm.loop !25

for.inc179:                                       ; preds = %while.cond
  %call178 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %sum.0)
  %inc180 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !26

for.end181:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 400, ptr %min2) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %min1) #3
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
