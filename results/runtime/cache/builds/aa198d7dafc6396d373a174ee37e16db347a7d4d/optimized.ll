; ModuleID = '<stdin>'
source_filename = "/tmp/tmpf3hschbx.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull %a) #7
  br label %for.cond

for.cond:                                         ; preds = %for.inc143, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc144, %for.inc143 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %k.0, %0
  br i1 %cmp, label %for.cond1, label %for.end145

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %4, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv60, %2
  br i1 %cmp2, label %for.cond4, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond1
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 noundef 0)
  %3 = call i32 @llvm.smax.i32(i32 %1, i32 noundef 1)
  %wide.trip.count110 = zext nneg i32 %3 to i64
  %wide.trip.count77 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %1 to i64
  br label %for.cond13

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %4 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %5 = sext i32 %4 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv60, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond1, !llvm.loop !12

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc138
  %indvars.iv106 = phi i64 [ 1, %for.cond13.preheader ], [ %indvars.iv.next107, %for.inc138 ]
  %sum.0 = phi i32 [ 0, %for.cond13.preheader ], [ %add, %for.inc138 ]
  %exitcond111.not = icmp eq i64 %indvars.iv106, %wide.trip.count110
  br i1 %exitcond111.not, label %for.inc143, label %for.cond16

for.cond16:                                       ; preds = %for.cond13, %for.inc60
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %for.inc60 ], [ 0, %for.cond13 ]
  %exitcond78.not = icmp eq i64 %indvars.iv73, %wide.trip.count77
  br i1 %exitcond78.not, label %for.cond63, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv73
  %6 = load i32, ptr %arrayidx20, align 16, !tbaa !5, !invariant.load !13
  br label %for.cond22

for.cond22:                                       ; preds = %for.body24, %for.body18
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %for.body24 ], [ 0, %for.body18 ]
  %min.0 = phi i32 [ %min.1, %for.body24 ], [ %6, %for.body18 ]
  %exitcond.not = icmp eq i64 %indvars.iv63, %wide.trip.count
  br i1 %exitcond.not, label %for.cond42.preheader, label %for.body24

for.cond42.preheader:                             ; preds = %for.cond22
  br label %for.cond42

for.body24:                                       ; preds = %for.cond22
  %arrayidx28 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv73, i64 %indvars.iv63
  %7 = load i32, ptr %arrayidx28, align 4, !tbaa !5, !invariant.load !13
  %8 = call i32 @llvm.smin.i32(i32 %7, i32 %min.0)
  %cmp3458 = icmp slt i32 %7, 0
  %min.1 = select i1 %cmp3458, i32 %min.0, i32 %8
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br label %for.cond22, !llvm.loop !14

for.cond42:                                       ; preds = %for.cond42.preheader, %for.inc57
  %indvars.iv67 = phi i64 [ 0, %for.cond42.preheader ], [ %indvars.iv.next68, %for.inc57 ]
  %exitcond72.not = icmp eq i64 %indvars.iv67, %wide.trip.count
  br i1 %exitcond72.not, label %for.inc60, label %for.body44

for.body44:                                       ; preds = %for.cond42
  %arrayidx48 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv73, i64 %indvars.iv67
  %9 = load i32, ptr %arrayidx48, align 4, !tbaa !5, !invariant.load !13
  %cmp49 = icmp sgt i32 %9, -1
  br i1 %cmp49, label %if.then50, label %for.inc57

if.then50:                                        ; preds = %for.body44
  %sub55 = sub nsw i32 %9, %min.0
  store i32 %sub55, ptr %arrayidx48, align 4, !tbaa !5
  br label %for.inc57

for.inc57:                                        ; preds = %for.body44, %if.then50
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  br label %for.cond42, !llvm.loop !15

for.inc60:                                        ; preds = %for.cond42
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  br label %for.cond16, !llvm.loop !16

for.cond63:                                       ; preds = %for.cond16, %for.inc110
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %for.inc110 ], [ 0, %for.cond16 ]
  %exitcond95.not = icmp eq i64 %indvars.iv91, %wide.trip.count77
  br i1 %exitcond95.not, label %for.end112, label %for.body65

for.body65:                                       ; preds = %for.cond63
  %arrayidx68 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv91
  %10 = load i32, ptr %arrayidx68, align 4, !tbaa !5, !invariant.load !13
  br label %for.cond69

for.cond69:                                       ; preds = %for.body71, %for.body65
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %for.body71 ], [ 0, %for.body65 ]
  %min.2 = phi i32 [ %min.3, %for.body71 ], [ %10, %for.body65 ]
  %exitcond84.not = icmp eq i64 %indvars.iv79, %wide.trip.count
  br i1 %exitcond84.not, label %for.cond92.preheader, label %for.body71

for.cond92.preheader:                             ; preds = %for.cond69
  br label %for.cond92

for.body71:                                       ; preds = %for.cond69
  %arrayidx75 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv79, i64 %indvars.iv91
  %11 = load i32, ptr %arrayidx75, align 4, !tbaa !5, !invariant.load !13
  %12 = call i32 @llvm.smin.i32(i32 %11, i32 %min.2)
  %cmp8257 = icmp slt i32 %11, 0
  %min.3 = select i1 %cmp8257, i32 %min.2, i32 %12
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  br label %for.cond69, !llvm.loop !17

for.cond92:                                       ; preds = %for.cond92.preheader, %for.inc107
  %indvars.iv85 = phi i64 [ 0, %for.cond92.preheader ], [ %indvars.iv.next86, %for.inc107 ]
  %exitcond90.not = icmp eq i64 %indvars.iv85, %wide.trip.count
  br i1 %exitcond90.not, label %for.inc110, label %for.body94

for.body94:                                       ; preds = %for.cond92
  %arrayidx98 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv85, i64 %indvars.iv91
  %13 = load i32, ptr %arrayidx98, align 4, !tbaa !5, !invariant.load !13
  %cmp99 = icmp sgt i32 %13, -1
  br i1 %cmp99, label %if.then100, label %for.inc107

if.then100:                                       ; preds = %for.body94
  %sub105 = sub nsw i32 %13, %min.2
  store i32 %sub105, ptr %arrayidx98, align 4, !tbaa !5
  br label %for.inc107

for.inc107:                                       ; preds = %for.body94, %if.then100
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %for.cond92, !llvm.loop !18

for.inc110:                                       ; preds = %for.cond92
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  br label %for.cond63, !llvm.loop !19

for.end112:                                       ; preds = %for.cond63
  %arrayidx116 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv106, i64 %indvars.iv106
  %14 = load i32, ptr %arrayidx116, align 4, !tbaa !5, !invariant.load !13
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc124, %for.end112
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %for.inc124 ], [ 0, %for.end112 ]
  %exitcond100.not = icmp eq i64 %indvars.iv96, %wide.trip.count77
  br i1 %exitcond100.not, label %for.cond127, label %for.inc124

for.inc124:                                       ; preds = %for.cond117
  %arrayidx123 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv96, i64 %indvars.iv106
  store i32 -1, ptr %arrayidx123, align 4, !tbaa !5
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  br label %for.cond117, !llvm.loop !20

for.cond127:                                      ; preds = %for.cond117, %for.inc134
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %for.inc134 ], [ 0, %for.cond117 ]
  %exitcond105.not = icmp eq i64 %indvars.iv101, %wide.trip.count77
  br i1 %exitcond105.not, label %for.inc138, label %for.inc134

for.inc134:                                       ; preds = %for.cond127
  %arrayidx133 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv106, i64 %indvars.iv101
  store i32 -1, ptr %arrayidx133, align 4, !tbaa !5
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  br label %for.cond127, !llvm.loop !21

for.inc138:                                       ; preds = %for.cond127
  %add = add nsw i32 %14, %sum.0
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %for.cond13, !llvm.loop !22

for.inc143:                                       ; preds = %for.cond13
  %call141 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %vtable.i = load ptr, ptr %call141, align 8, !tbaa !23, !invariant.load !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !13
  %add.ptr.i = getelementptr inbounds i8, ptr %call141, i64 %vbase.offset.i
  %call.i1 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call141, i8 noundef signext %call.i1)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc144 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !25

for.end145:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #3 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !26, !invariant.load !13
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !34, !invariant.load !13
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !23, !invariant.load !13
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !13
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !8, i64 0}
!25 = distinct !{!25, !10, !11}
!26 = !{!27, !7, i64 56}
!27 = !{!"_ZTSSt5ctypeIcE", !28, i64 0, !29, i64 16, !31, i64 24, !32, i64 32, !32, i64 40, !33, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!28 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!29 = !{!"p1 _ZTS15__locale_struct", !30, i64 0}
!30 = !{!"any pointer", !7, i64 0}
!31 = !{!"bool", !7, i64 0}
!32 = !{!"p1 int", !30, i64 0}
!33 = !{!"p1 short", !30, i64 0}
!34 = !{!7, !7, i64 0}
