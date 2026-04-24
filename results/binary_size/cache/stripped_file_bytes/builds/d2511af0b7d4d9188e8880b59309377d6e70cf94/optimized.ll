; ModuleID = '<stdin>'
source_filename = "/tmp/tmp31o7t6tr.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [110 x [110 x i32]], align 16
  %b = alloca [110 x i32], align 16
  %num1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 48400, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 440, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num1) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %num1)
  %add.ptr127 = getelementptr inbounds nuw i8, ptr %a, i64 444
  br label %for.cond

for.cond:                                         ; preds = %while.end, %entry
  %m.0 = phi i32 [ 0, %entry ], [ %inc186, %while.end ]
  %0 = load i32, ptr %num1, align 4, !tbaa !5
  %cmp = icmp slt i32 %m.0, %0
  br i1 %cmp, label %for.cond2.preheader, label %for.end187

for.cond2.preheader:                              ; preds = %for.cond
  %wide.trip.count108 = zext i32 %0 to i64
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc12
  %indvars.iv105 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next106, %for.inc12 ]
  %exitcond109.not = icmp eq i64 %indvars.iv105, %wide.trip.count108
  br i1 %exitcond109.not, label %while.cond.preheader, label %for.cond5.preheader

while.cond.preheader:                             ; preds = %for.cond2
  %1 = add i32 %0, -1
  %2 = zext i32 %1 to i64
  br label %while.cond

for.cond5.preheader:                              ; preds = %for.cond2
  %add.ptr = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv105
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %indvars.iv = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next, %for.body7 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count108
  br i1 %exitcond.not, label %for.inc12, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %add.ptr10 = getelementptr inbounds nuw i32, ptr %add.ptr, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond5, !llvm.loop !9

for.inc12:                                        ; preds = %for.cond5
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  br label %for.cond2, !llvm.loop !12

while.cond.loopexit:                              ; preds = %for.cond155
  %add = add nsw i32 %11, %sum.0
  %indvars.iv.next175 = add nsw i64 %indvars.iv174, -1
  %indvars.iv.next173 = add nsw i64 %indvars.iv172, -1
  br label %while.cond, !llvm.loop !13

while.cond:                                       ; preds = %while.cond.preheader, %while.cond.loopexit
  %indvars.iv174 = phi i64 [ %wide.trip.count108, %while.cond.preheader ], [ %indvars.iv.next175, %while.cond.loopexit ]
  %indvars.iv172 = phi i64 [ %2, %while.cond.preheader ], [ %indvars.iv.next173, %while.cond.loopexit ]
  %sum.0 = phi i32 [ 0, %while.cond.preheader ], [ %add, %while.cond.loopexit ]
  %cmp15 = icmp sgt i64 %indvars.iv174, 1
  br i1 %cmp15, label %for.cond16, label %while.end

for.cond16:                                       ; preds = %while.cond, %for.inc42
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %for.inc42 ], [ 0, %while.cond ]
  %exitcond119.not = icmp eq i64 %indvars.iv115, %indvars.iv174
  br i1 %exitcond119.not, label %for.cond45, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %add.ptr20 = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv115
  store i32 10000, ptr %add.ptr20, align 4, !tbaa !5
  %add.ptr25 = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv115
  br label %for.cond21

for.cond21:                                       ; preds = %for.body23, %for.body18
  %spec.store.select179 = phi i32 [ %spec.store.select, %for.body23 ], [ poison, %for.body18 ]
  %3 = phi i32 [ %spec.store.select, %for.body23 ], [ 10000, %for.body18 ]
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %for.body23 ], [ 0, %for.body18 ]
  %exitcond114.not = icmp eq i64 %indvars.iv110, %indvars.iv174
  br i1 %exitcond114.not, label %for.inc42, label %for.body23

for.body23:                                       ; preds = %for.cond21
  %add.ptr28 = getelementptr inbounds nuw i32, ptr %add.ptr25, i64 %indvars.iv110
  %4 = load i32, ptr %add.ptr28, align 4, !tbaa !5
  %spec.store.select = call i32 @llvm.smin.i32(i32 %4, i32 %3)
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  br label %for.cond21, !llvm.loop !14

for.inc42:                                        ; preds = %for.cond21
  store i32 %spec.store.select179, ptr %add.ptr20, align 4
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  br label %for.cond16, !llvm.loop !15

for.cond45:                                       ; preds = %for.cond16, %for.inc66
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %for.inc66 ], [ 0, %for.cond16 ]
  %exitcond129.not = icmp eq i64 %indvars.iv125, %indvars.iv174
  br i1 %exitcond129.not, label %for.cond69, label %for.cond48.preheader

for.cond48.preheader:                             ; preds = %for.cond45
  %add.ptr52 = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv125
  %add.ptr57 = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv125
  %5 = load i32, ptr %add.ptr57, align 4, !tbaa !5
  br label %for.cond48

for.cond48:                                       ; preds = %for.cond48.preheader, %for.body50
  %indvars.iv120 = phi i64 [ 0, %for.cond48.preheader ], [ %indvars.iv.next121, %for.body50 ]
  %exitcond124.not = icmp eq i64 %indvars.iv120, %indvars.iv174
  br i1 %exitcond124.not, label %for.inc66, label %for.body50

for.body50:                                       ; preds = %for.cond48
  %add.ptr55 = getelementptr inbounds nuw i32, ptr %add.ptr52, i64 %indvars.iv120
  %6 = load i32, ptr %add.ptr55, align 4, !tbaa !5
  %sub = sub nsw i32 %6, %5
  store i32 %sub, ptr %add.ptr55, align 4, !tbaa !5
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  br label %for.cond48, !llvm.loop !16

for.inc66:                                        ; preds = %for.cond48
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1
  br label %for.cond45, !llvm.loop !17

for.cond69:                                       ; preds = %for.cond45, %for.inc97
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %for.inc97 ], [ 0, %for.cond45 ]
  %exitcond139.not = icmp eq i64 %indvars.iv135, %indvars.iv174
  br i1 %exitcond139.not, label %for.cond100, label %for.body71

for.body71:                                       ; preds = %for.cond69
  %add.ptr73 = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv135
  store i32 10000, ptr %add.ptr73, align 4, !tbaa !5
  %invariant.gep = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv135
  br label %for.cond74

for.cond74:                                       ; preds = %for.body76, %for.body71
  %spec.store.select102180 = phi i32 [ %spec.store.select102, %for.body76 ], [ poison, %for.body71 ]
  %7 = phi i32 [ %spec.store.select102, %for.body76 ], [ 10000, %for.body71 ]
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %for.body76 ], [ 0, %for.body71 ]
  %exitcond134.not = icmp eq i64 %indvars.iv130, %indvars.iv174
  br i1 %exitcond134.not, label %for.inc97, label %for.body76

for.body76:                                       ; preds = %for.cond74
  %gep = getelementptr inbounds nuw [110 x i32], ptr %invariant.gep, i64 %indvars.iv130
  %8 = load i32, ptr %gep, align 4, !tbaa !5
  %spec.store.select102 = call i32 @llvm.smin.i32(i32 %8, i32 %7)
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1
  br label %for.cond74, !llvm.loop !18

for.inc97:                                        ; preds = %for.cond74
  store i32 %spec.store.select102180, ptr %add.ptr73, align 4
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  br label %for.cond69, !llvm.loop !19

for.cond100:                                      ; preds = %for.cond69, %for.inc122
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %for.inc122 ], [ 0, %for.cond69 ]
  %exitcond149.not = icmp eq i64 %indvars.iv145, %indvars.iv174
  br i1 %exitcond149.not, label %for.end124, label %for.cond103.preheader

for.cond103.preheader:                            ; preds = %for.cond100
  %add.ptr107 = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv145
  br label %for.cond103

for.cond103:                                      ; preds = %for.cond103.preheader, %for.body105
  %indvars.iv140 = phi i64 [ 0, %for.cond103.preheader ], [ %indvars.iv.next141, %for.body105 ]
  %exitcond144.not = icmp eq i64 %indvars.iv140, %indvars.iv174
  br i1 %exitcond144.not, label %for.inc122, label %for.body105

for.body105:                                      ; preds = %for.cond103
  %add.ptr110 = getelementptr inbounds nuw i32, ptr %add.ptr107, i64 %indvars.iv140
  %9 = load i32, ptr %add.ptr110, align 4, !tbaa !5
  %add.ptr112 = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv140
  %10 = load i32, ptr %add.ptr112, align 4, !tbaa !5
  %sub113 = sub nsw i32 %9, %10
  store i32 %sub113, ptr %add.ptr110, align 4, !tbaa !5
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  br label %for.cond103, !llvm.loop !20

for.inc122:                                       ; preds = %for.cond103
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1
  br label %for.cond100, !llvm.loop !21

for.end124:                                       ; preds = %for.cond100
  %11 = load i32, ptr %add.ptr127, align 4, !tbaa !5
  br label %for.cond128

for.cond128:                                      ; preds = %for.inc152, %for.end124
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %for.inc152 ], [ 0, %for.end124 ]
  %exitcond161.not = icmp eq i64 %indvars.iv157, %indvars.iv174
  br i1 %exitcond161.not, label %for.cond155, label %for.cond131.preheader

for.cond131.preheader:                            ; preds = %for.cond128
  %add.ptr138 = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv157
  br label %for.cond131

for.cond131:                                      ; preds = %for.cond131.preheader, %for.inc149
  %indvars.iv150 = phi i64 [ 0, %for.cond131.preheader ], [ %indvars.iv.next151, %for.inc149 ]
  %exitcond156.not = icmp eq i64 %indvars.iv150, %indvars.iv172
  br i1 %exitcond156.not, label %for.inc152, label %for.body134

for.body134:                                      ; preds = %for.cond131
  %cmp135.not = icmp eq i64 %indvars.iv150, 0
  br i1 %cmp135.not, label %for.inc149, label %if.then136

if.then136:                                       ; preds = %for.body134
  %add.ptr141 = getelementptr inbounds nuw i32, ptr %add.ptr138, i64 %indvars.iv150
  %add.ptr142 = getelementptr inbounds nuw i8, ptr %add.ptr141, i64 4
  %12 = load i32, ptr %add.ptr142, align 4, !tbaa !5
  store i32 %12, ptr %add.ptr141, align 4, !tbaa !5
  br label %for.inc149

for.inc149:                                       ; preds = %for.body134, %if.then136
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1
  br label %for.cond131, !llvm.loop !22

for.inc152:                                       ; preds = %for.cond131
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1
  br label %for.cond128, !llvm.loop !23

for.cond155:                                      ; preds = %for.cond128, %for.inc180
  %indvars.iv167 = phi i64 [ %indvars.iv.next168, %for.inc180 ], [ 0, %for.cond128 ]
  %exitcond171.not = icmp eq i64 %indvars.iv167, %indvars.iv172
  br i1 %exitcond171.not, label %while.cond.loopexit, label %for.cond159

for.cond159:                                      ; preds = %for.cond155, %for.inc177
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %for.inc177 ], [ 0, %for.cond155 ]
  %exitcond166.not = icmp eq i64 %indvars.iv162, %indvars.iv172
  br i1 %exitcond166.not, label %for.inc180, label %for.body162

for.body162:                                      ; preds = %for.cond159
  %cmp163.not = icmp eq i64 %indvars.iv162, 0
  br i1 %cmp163.not, label %for.inc177, label %if.then164

if.then164:                                       ; preds = %for.body162
  %add.ptr166 = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv162
  %add.ptr167 = getelementptr inbounds nuw i8, ptr %add.ptr166, i64 440
  %add.ptr170 = getelementptr inbounds nuw i32, ptr %add.ptr167, i64 %indvars.iv167
  %13 = load i32, ptr %add.ptr170, align 4, !tbaa !5
  %add.ptr175 = getelementptr inbounds nuw i32, ptr %add.ptr166, i64 %indvars.iv167
  store i32 %13, ptr %add.ptr175, align 4, !tbaa !5
  br label %for.inc177

for.inc177:                                       ; preds = %for.body162, %if.then164
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1
  br label %for.cond159, !llvm.loop !24

for.inc180:                                       ; preds = %for.cond159
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1
  br label %for.cond155, !llvm.loop !25

while.end:                                        ; preds = %while.cond
  %call183 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %vtable.i = load ptr, ptr %call183, align 8, !tbaa !26
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call183, i64 %vbase.offset.i
  %call.i103 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call183, i8 noundef signext %call.i103)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc186 = add nuw nsw i32 %m.0, 1
  br label %for.cond, !llvm.loop !28

for.end187:                                       ; preds = %for.cond
  %call188 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call189 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call190 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call191 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num1) #5
  call void @llvm.lifetime.end.p0(i64 440, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 48400, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !8, i64 0}
!28 = distinct !{!28, !10, !11}
