; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8zpu5yfo.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.3 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@str.4 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.5 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@str.6 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.7 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %y = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %if.end163, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc165, %if.end163 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end166

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %y) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %m1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %m2) #6
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %y, ptr noundef nonnull %m1, ptr noundef nonnull %m2)
  %1 = load i32, ptr %y, align 4, !tbaa !5
  %2 = and i32 %1, 3
  %cmp2 = icmp eq i32 %2, 0
  %rem3 = srem i32 %1, 100
  %cmp4 = icmp ne i32 %rem3, 0
  %or.cond = and i1 %cmp2, %cmp4
  %rem5 = srem i32 %1, 400
  %cmp6 = icmp eq i32 %rem5, 0
  %or.cond67 = or i1 %cmp6, %or.cond
  %3 = load i32, ptr %m1, align 4, !tbaa !5
  %smax77 = call i32 @llvm.smax.i32(i32 %3, i32 noundef 1)
  br i1 %or.cond67, label %for.cond7, label %for.cond85

for.cond7:                                        ; preds = %for.body, %if.end29
  %j.0 = phi i32 [ %inc, %if.end29 ], [ 1, %for.body ]
  %n1.0 = phi i32 [ %add26, %if.end29 ], [ 0, %for.body ]
  %exitcond78.not = icmp eq i32 %j.0, %smax77
  br i1 %exitcond78.not, label %for.cond30.preheader, label %for.body9

for.cond30.preheader:                             ; preds = %for.cond7
  %4 = load i32, ptr %m2, align 4, !tbaa !5
  %smax79 = call i32 @llvm.smax.i32(i32 %4, i32 noundef 1)
  br label %for.cond30

for.body9:                                        ; preds = %for.cond7
  %Pivot103 = icmp samesign ult i32 %j.0, 5
  br i1 %Pivot103, label %NodeBlock86, label %NodeBlock100

NodeBlock100:                                     ; preds = %for.body9
  %Pivot101 = icmp samesign ult i32 %j.0, 10
  br i1 %Pivot101, label %NodeBlock92, label %NodeBlock98

NodeBlock98:                                      ; preds = %NodeBlock100
  %Pivot99 = icmp samesign ult i32 %j.0, 12
  br i1 %Pivot99, label %LeafBlock94, label %LeafBlock96

LeafBlock96:                                      ; preds = %NodeBlock98
  %SwitchLeaf97 = icmp eq i32 %j.0, 12
  br i1 %SwitchLeaf97, label %if.end29, label %if.else27

LeafBlock94:                                      ; preds = %NodeBlock98
  %SwitchLeaf95 = icmp eq i32 %j.0, 10
  br i1 %SwitchLeaf95, label %if.end29, label %if.else27

NodeBlock92:                                      ; preds = %NodeBlock100
  %Pivot93 = icmp samesign ult i32 %j.0, 7
  br i1 %Pivot93, label %LeafBlock88, label %LeafBlock90

LeafBlock90:                                      ; preds = %NodeBlock92
  %SwitchLeaf91.not = icmp eq i32 %j.0, 9
  br i1 %SwitchLeaf91.not, label %if.else27, label %if.end29

LeafBlock88:                                      ; preds = %NodeBlock92
  %SwitchLeaf89 = icmp eq i32 %j.0, 5
  br i1 %SwitchLeaf89, label %if.end29, label %if.else27

NodeBlock86:                                      ; preds = %for.body9
  %Pivot87 = icmp samesign ult i32 %j.0, 2
  br i1 %Pivot87, label %if.end29, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock86
  %switch.selectcmp = icmp eq i32 %j.0, 3
  %switch.select = select i1 %switch.selectcmp, i32 31, i32 30
  %switch.selectcmp172 = icmp eq i32 %j.0, 2
  %switch.select173 = select i1 %switch.selectcmp172, i32 29, i32 %switch.select
  br label %if.end29

if.else27:                                        ; preds = %LeafBlock96, %LeafBlock94, %LeafBlock90, %LeafBlock88
  br label %if.end29

if.end29:                                         ; preds = %NodeBlock86, %NodeBlock, %LeafBlock88, %LeafBlock90, %LeafBlock94, %LeafBlock96, %if.else27
  %.sink = phi i32 [ 30, %if.else27 ], [ 31, %LeafBlock96 ], [ 31, %LeafBlock94 ], [ 31, %LeafBlock90 ], [ 31, %LeafBlock88 ], [ %switch.select173, %NodeBlock ], [ 31, %NodeBlock86 ]
  %add26 = add nuw nsw i32 %.sink, %n1.0
  %inc = add nuw i32 %j.0, 1
  br label %for.cond7, !llvm.loop !9

for.cond30:                                       ; preds = %for.cond30.preheader, %if.end55
  %j.1 = phi i32 [ %inc57, %if.end55 ], [ 1, %for.cond30.preheader ]
  %n2.0 = phi i32 [ %add51, %if.end55 ], [ 0, %for.cond30.preheader ]
  %exitcond80.not = icmp eq i32 %j.1, %smax79
  br i1 %exitcond80.not, label %for.end58, label %for.body32

for.body32:                                       ; preds = %for.cond30
  %Pivot127 = icmp samesign ult i32 %j.1, 5
  br i1 %Pivot127, label %NodeBlock110, label %NodeBlock124

NodeBlock124:                                     ; preds = %for.body32
  %Pivot125 = icmp samesign ult i32 %j.1, 10
  br i1 %Pivot125, label %NodeBlock116, label %NodeBlock122

NodeBlock122:                                     ; preds = %NodeBlock124
  %Pivot123 = icmp samesign ult i32 %j.1, 12
  br i1 %Pivot123, label %LeafBlock118, label %LeafBlock120

LeafBlock120:                                     ; preds = %NodeBlock122
  %SwitchLeaf121 = icmp eq i32 %j.1, 12
  br i1 %SwitchLeaf121, label %if.end55, label %if.else52

LeafBlock118:                                     ; preds = %NodeBlock122
  %SwitchLeaf119 = icmp eq i32 %j.1, 10
  br i1 %SwitchLeaf119, label %if.end55, label %if.else52

NodeBlock116:                                     ; preds = %NodeBlock124
  %Pivot117 = icmp samesign ult i32 %j.1, 7
  br i1 %Pivot117, label %LeafBlock112, label %LeafBlock114

LeafBlock114:                                     ; preds = %NodeBlock116
  %SwitchLeaf115.not = icmp eq i32 %j.1, 9
  br i1 %SwitchLeaf115.not, label %if.else52, label %if.end55

LeafBlock112:                                     ; preds = %NodeBlock116
  %SwitchLeaf113 = icmp eq i32 %j.1, 5
  br i1 %SwitchLeaf113, label %if.end55, label %if.else52

NodeBlock110:                                     ; preds = %for.body32
  %Pivot111 = icmp samesign ult i32 %j.1, 2
  br i1 %Pivot111, label %if.end55, label %NodeBlock108

NodeBlock108:                                     ; preds = %NodeBlock110
  %switch.selectcmp174 = icmp eq i32 %j.1, 3
  %switch.select175 = select i1 %switch.selectcmp174, i32 31, i32 30
  %switch.selectcmp176 = icmp eq i32 %j.1, 2
  %switch.select177 = select i1 %switch.selectcmp176, i32 29, i32 %switch.select175
  br label %if.end55

if.else52:                                        ; preds = %LeafBlock120, %LeafBlock118, %LeafBlock114, %LeafBlock112
  br label %if.end55

if.end55:                                         ; preds = %NodeBlock110, %NodeBlock108, %LeafBlock112, %LeafBlock114, %LeafBlock118, %LeafBlock120, %if.else52
  %.sink81 = phi i32 [ 30, %if.else52 ], [ 31, %LeafBlock120 ], [ 31, %LeafBlock118 ], [ 31, %LeafBlock114 ], [ 31, %LeafBlock112 ], [ %switch.select177, %NodeBlock108 ], [ 31, %NodeBlock110 ]
  %add51 = add nuw nsw i32 %.sink81, %n2.0
  %inc57 = add nuw i32 %j.1, 1
  br label %for.cond30, !llvm.loop !12

for.end58:                                        ; preds = %for.cond30
  %cmp59 = icmp samesign ult i32 %n1.0, %n2.0
  br i1 %cmp59, label %if.then60, label %if.end68

if.then60:                                        ; preds = %for.end58
  %sub = sub nuw nsw i32 %n2.0, %n1.0
  %rem61 = urem i32 %sub, 7
  %cmp62 = icmp eq i32 %rem61, 0
  %str.5.str.4 = select i1 %cmp62, ptr @str.5, ptr @str.4
  %puts72 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.5.str.4) #6
  br label %if.end68

if.end68:                                         ; preds = %if.then60, %for.end58
  %cmp69 = icmp samesign ugt i32 %n1.0, %n2.0
  br i1 %cmp69, label %if.then70, label %if.end163

if.then70:                                        ; preds = %if.end68
  %sub71 = sub nuw nsw i32 %n1.0, %n2.0
  %rem72 = urem i32 %sub71, 7
  %cmp73 = icmp eq i32 %rem72, 0
  %str.7.str.6 = select i1 %cmp73, ptr @str.7, ptr @str.6
  br label %if.end163.sink.split

for.cond85:                                       ; preds = %for.body, %if.end108
  %j81.0 = phi i32 [ %inc110, %if.end108 ], [ 1, %for.body ]
  %n182.0 = phi i32 [ %add104, %if.end108 ], [ 0, %for.body ]
  %exitcond.not = icmp eq i32 %j81.0, %smax77
  br i1 %exitcond.not, label %for.cond112.preheader, label %for.body87

for.cond112.preheader:                            ; preds = %for.cond85
  %5 = load i32, ptr %m2, align 4, !tbaa !5
  %smax75 = call i32 @llvm.smax.i32(i32 %5, i32 noundef 1)
  br label %for.cond112

for.body87:                                       ; preds = %for.cond85
  %Pivot147 = icmp samesign ult i32 %j81.0, 5
  br i1 %Pivot147, label %NodeBlock134, label %NodeBlock144

NodeBlock144:                                     ; preds = %for.body87
  %Pivot145 = icmp samesign ult i32 %j81.0, 7
  br i1 %Pivot145, label %LeafBlock136, label %NodeBlock142

NodeBlock142:                                     ; preds = %NodeBlock144
  %Pivot143 = icmp samesign ult i32 %j81.0, 10
  br i1 %Pivot143, label %LeafBlock138, label %LeafBlock140

LeafBlock140:                                     ; preds = %NodeBlock142
  %SwitchLeaf141 = icmp eq i32 %j81.0, 10
  br i1 %SwitchLeaf141, label %if.end108, label %if.else105

LeafBlock138:                                     ; preds = %NodeBlock142
  %SwitchLeaf139.not = icmp eq i32 %j81.0, 9
  br i1 %SwitchLeaf139.not, label %if.else105, label %if.end108

LeafBlock136:                                     ; preds = %NodeBlock144
  %SwitchLeaf137 = icmp eq i32 %j81.0, 5
  br i1 %SwitchLeaf137, label %if.end108, label %if.else105

NodeBlock134:                                     ; preds = %for.body87
  %Pivot135 = icmp samesign ult i32 %j81.0, 2
  br i1 %Pivot135, label %if.end108, label %NodeBlock132

NodeBlock132:                                     ; preds = %NodeBlock134
  %switch.selectcmp178 = icmp eq i32 %j81.0, 3
  %switch.select179 = select i1 %switch.selectcmp178, i32 31, i32 30
  %switch.selectcmp180 = icmp eq i32 %j81.0, 2
  %switch.select181 = select i1 %switch.selectcmp180, i32 28, i32 %switch.select179
  br label %if.end108

if.else105:                                       ; preds = %LeafBlock140, %LeafBlock138, %LeafBlock136
  br label %if.end108

if.end108:                                        ; preds = %NodeBlock134, %NodeBlock132, %LeafBlock136, %LeafBlock138, %LeafBlock140, %if.else105
  %.sink82 = phi i32 [ 30, %if.else105 ], [ 31, %LeafBlock140 ], [ 31, %LeafBlock138 ], [ 31, %LeafBlock136 ], [ %switch.select181, %NodeBlock132 ], [ 31, %NodeBlock134 ]
  %add104 = add nuw nsw i32 %.sink82, %n182.0
  %inc110 = add nuw i32 %j81.0, 1
  br label %for.cond85, !llvm.loop !13

for.cond112:                                      ; preds = %for.cond112.preheader, %if.end137
  %j81.1 = phi i32 [ %inc139, %if.end137 ], [ 1, %for.cond112.preheader ]
  %n283.0 = phi i32 [ %add133, %if.end137 ], [ 0, %for.cond112.preheader ]
  %exitcond76.not = icmp eq i32 %j81.1, %smax75
  br i1 %exitcond76.not, label %for.end140, label %for.body114

for.body114:                                      ; preds = %for.cond112
  %Pivot171 = icmp samesign ult i32 %j81.1, 5
  br i1 %Pivot171, label %NodeBlock154, label %NodeBlock168

NodeBlock168:                                     ; preds = %for.body114
  %Pivot169 = icmp samesign ult i32 %j81.1, 10
  br i1 %Pivot169, label %NodeBlock160, label %NodeBlock166

NodeBlock166:                                     ; preds = %NodeBlock168
  %Pivot167 = icmp samesign ult i32 %j81.1, 12
  br i1 %Pivot167, label %LeafBlock162, label %LeafBlock164

LeafBlock164:                                     ; preds = %NodeBlock166
  %SwitchLeaf165 = icmp eq i32 %j81.1, 12
  br i1 %SwitchLeaf165, label %if.end137, label %if.else134

LeafBlock162:                                     ; preds = %NodeBlock166
  %SwitchLeaf163 = icmp eq i32 %j81.1, 10
  br i1 %SwitchLeaf163, label %if.end137, label %if.else134

NodeBlock160:                                     ; preds = %NodeBlock168
  %Pivot161 = icmp samesign ult i32 %j81.1, 7
  br i1 %Pivot161, label %LeafBlock156, label %LeafBlock158

LeafBlock158:                                     ; preds = %NodeBlock160
  %SwitchLeaf159.not = icmp eq i32 %j81.1, 9
  br i1 %SwitchLeaf159.not, label %if.else134, label %if.end137

LeafBlock156:                                     ; preds = %NodeBlock160
  %SwitchLeaf157 = icmp eq i32 %j81.1, 5
  br i1 %SwitchLeaf157, label %if.end137, label %if.else134

NodeBlock154:                                     ; preds = %for.body114
  %Pivot155 = icmp samesign ult i32 %j81.1, 2
  br i1 %Pivot155, label %if.end137, label %NodeBlock152

NodeBlock152:                                     ; preds = %NodeBlock154
  %switch.selectcmp182 = icmp eq i32 %j81.1, 3
  %switch.select183 = select i1 %switch.selectcmp182, i32 31, i32 30
  %switch.selectcmp184 = icmp eq i32 %j81.1, 2
  %switch.select185 = select i1 %switch.selectcmp184, i32 28, i32 %switch.select183
  br label %if.end137

if.else134:                                       ; preds = %LeafBlock164, %LeafBlock162, %LeafBlock158, %LeafBlock156
  br label %if.end137

if.end137:                                        ; preds = %NodeBlock154, %NodeBlock152, %LeafBlock156, %LeafBlock158, %LeafBlock162, %LeafBlock164, %if.else134
  %.sink83 = phi i32 [ 30, %if.else134 ], [ 31, %LeafBlock164 ], [ 31, %LeafBlock162 ], [ 31, %LeafBlock158 ], [ 31, %LeafBlock156 ], [ %switch.select185, %NodeBlock152 ], [ 31, %NodeBlock154 ]
  %add133 = add nuw nsw i32 %.sink83, %n283.0
  %inc139 = add nuw i32 %j81.1, 1
  br label %for.cond112, !llvm.loop !14

for.end140:                                       ; preds = %for.cond112
  %cmp141 = icmp samesign ult i32 %n182.0, %n283.0
  br i1 %cmp141, label %if.then142, label %if.end151

if.then142:                                       ; preds = %for.end140
  %sub143 = sub nuw nsw i32 %n283.0, %n182.0
  %rem144 = urem i32 %sub143, 7
  %cmp145 = icmp eq i32 %rem144, 0
  %str.1.str = select i1 %cmp145, ptr @str.1, ptr @str
  %puts68 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.1.str) #6
  br label %if.end151

if.end151:                                        ; preds = %if.then142, %for.end140
  %cmp152 = icmp samesign ugt i32 %n182.0, %n283.0
  br i1 %cmp152, label %if.then153, label %if.end163

if.then153:                                       ; preds = %if.end151
  %sub154 = sub nuw nsw i32 %n182.0, %n283.0
  %rem155 = urem i32 %sub154, 7
  %cmp156 = icmp eq i32 %rem155, 0
  %str.3.str.2 = select i1 %cmp156, ptr @str.3, ptr @str.2
  br label %if.end163.sink.split

if.end163.sink.split:                             ; preds = %if.then153, %if.then70
  %str.2.sink = phi ptr [ %str.7.str.6, %if.then70 ], [ %str.3.str.2, %if.then153 ]
  %puts69 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.2.sink) #6
  br label %if.end163

if.end163:                                        ; preds = %if.end163.sink.split, %if.end151, %if.end68
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y) #6
  %inc165 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !15

for.end166:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind willreturn }
attributes #6 = { nounwind }

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
