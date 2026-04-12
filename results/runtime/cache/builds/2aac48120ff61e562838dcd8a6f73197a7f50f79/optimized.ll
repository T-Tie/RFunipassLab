; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqtovli_a.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %num = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %num) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond3

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %num, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond3:                                        ; preds = %for.cond3.preheader, %for.cond.cleanup9
  %indvars.iv28 = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next29, %for.cond.cleanup9 ]
  %exitcond.not = icmp eq i64 %indvars.iv28, %wide.trip.count
  br i1 %exitcond.not, label %for.cond33, label %for.cond7

for.cond7:                                        ; preds = %for.cond3, %for.cond7.backedge
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.cond7.backedge ], [ %1, %for.cond3 ]
  %indvars.iv.next25 = add nsw i64 %indvars.iv24, -1
  %cmp8 = icmp sgt i64 %indvars.iv.next25, %indvars.iv28
  br i1 %cmp8, label %for.body10, label %for.cond.cleanup9

for.cond.cleanup9:                                ; preds = %for.cond7
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond3, !llvm.loop !12

for.body10:                                       ; preds = %for.cond7
  %arrayidx12 = getelementptr inbounds [500 x i32], ptr %num, i64 0, i64 %indvars.iv.next25
  %2 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %3 = add nsw i64 %indvars.iv24, -2
  %arrayidx15 = getelementptr inbounds [500 x i32], ptr %num, i64 0, i64 %3
  %4 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %2, %4
  br i1 %cmp16, label %if.then, label %for.cond7.backedge

for.cond7.backedge:                               ; preds = %for.body10, %if.then
  br label %for.cond7, !llvm.loop !13

if.then:                                          ; preds = %for.body10
  store i32 %4, ptr %arrayidx12, align 4, !tbaa !5
  store i32 %2, ptr %arrayidx15, align 4, !tbaa !5
  br label %for.cond7.backedge

for.cond33:                                       ; preds = %for.cond3, %for.inc52
  %.pre35 = phi i32 [ %.pre, %for.inc52 ], [ %0, %for.cond3 ]
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.inc52 ], [ 0, %for.cond3 ]
  %flag.0 = phi i32 [ %flag.1, %for.inc52 ], [ 0, %for.cond3 ]
  %5 = sext i32 %.pre35 to i64
  %cmp34 = icmp slt i64 %indvars.iv32, %5
  br i1 %cmp34, label %for.body36, label %for.cond.cleanup35

for.cond.cleanup35:                               ; preds = %for.cond33
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i19 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i19)
  %call.i.i21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i20)
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %num) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0

for.body36:                                       ; preds = %for.cond33
  %arrayidx38 = getelementptr inbounds nuw [500 x i32], ptr %num, i64 0, i64 %indvars.iv32
  %6 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %7 = and i32 %6, 1
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %for.inc52, label %if.then39

if.then39:                                        ; preds = %for.body36
  %tobool40.not = icmp eq i32 %flag.0, 0
  br i1 %tobool40.not, label %if.end49, label %if.else

if.else:                                          ; preds = %if.then39
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %8 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  br label %if.end49

if.end49:                                         ; preds = %if.then39, %if.else
  %.sink = phi i32 [ %8, %if.else ], [ %6, %if.then39 ]
  %call48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.sink)
  %inc50 = add nsw i32 %flag.0, 1
  %.pre.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc52

for.inc52:                                        ; preds = %for.body36, %if.end49
  %.pre = phi i32 [ %.pre.pre, %if.end49 ], [ %.pre35, %for.body36 ]
  %flag.1 = phi i32 [ %inc50, %if.end49 ], [ %flag.0, %for.body36 ]
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond33, !llvm.loop !16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

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
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !8, i64 0}
!16 = distinct !{!16, !10, !11}
