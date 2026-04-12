; ModuleID = '<stdin>'
source_filename = "/tmp/tmpdyn5ti16.cpp"
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
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %num = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %num) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond3

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %num, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc29
  %indvars.iv7 = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next8, %for.inc29 ]
  %exitcond.not = icmp eq i64 %indvars.iv7, %wide.trip.count
  br i1 %exitcond.not, label %for.cond33, label %for.cond7

for.cond7:                                        ; preds = %for.cond3, %for.inc27
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.inc27 ], [ %1, %for.cond3 ]
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, -1
  %cmp8 = icmp sgt i64 %indvars.iv.next4, %indvars.iv7
  br i1 %cmp8, label %for.body10, label %for.inc29

for.body10:                                       ; preds = %for.cond7
  %2 = add nsw i64 %indvars.iv3, -2
  %arrayidx13 = getelementptr inbounds [500 x i32], ptr %num, i64 0, i64 %2
  %3 = load i32, ptr %arrayidx13, align 4, !tbaa !5, !invariant.load !12
  %arrayidx15 = getelementptr inbounds [500 x i32], ptr %num, i64 0, i64 %indvars.iv.next4
  %4 = load i32, ptr %arrayidx15, align 4, !tbaa !5, !invariant.load !12
  %cmp16 = icmp sgt i32 %3, %4
  br i1 %cmp16, label %if.then, label %for.inc27

if.then:                                          ; preds = %for.body10
  store i32 %4, ptr %arrayidx13, align 4, !tbaa !5
  store i32 %3, ptr %arrayidx15, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.body10, %if.then
  br label %for.cond7, !llvm.loop !13

for.inc29:                                        ; preds = %for.cond7
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond3, !llvm.loop !14

for.cond33:                                       ; preds = %for.cond3, %for.inc50
  %.pre14 = phi i32 [ %.pre, %for.inc50 ], [ %0, %for.cond3 ]
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.inc50 ], [ 0, %for.cond3 ]
  %cnt.0 = phi i32 [ %cnt.1, %for.inc50 ], [ 0, %for.cond3 ]
  %5 = sext i32 %.pre14 to i64
  %cmp34 = icmp slt i64 %indvars.iv11, %5
  br i1 %cmp34, label %for.body36, label %for.end52

for.body36:                                       ; preds = %for.cond33
  %arrayidx38 = getelementptr inbounds nuw [500 x i32], ptr %num, i64 0, i64 %indvars.iv11
  %6 = load i32, ptr %arrayidx38, align 4, !tbaa !5, !invariant.load !12
  %7 = and i32 %6, -2147483647
  %cmp39 = icmp eq i32 %7, 1
  br i1 %cmp39, label %if.then40, label %for.inc50

if.then40:                                        ; preds = %for.body36
  %cmp41.not = icmp eq i32 %cnt.0, 0
  br i1 %cmp41.not, label %if.end44, label %if.then42

if.then42:                                        ; preds = %if.then40
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 44)
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.then40
  %call47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %6)
  %inc48 = add nsw i32 %cnt.0, 1
  %.pre.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc50

for.inc50:                                        ; preds = %for.body36, %if.end44
  %.pre = phi i32 [ %.pre.pre, %if.end44 ], [ %.pre14, %for.body36 ]
  %cnt.1 = phi i32 [ %inc48, %if.end44 ], [ %cnt.0, %for.body36 ]
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond33, !llvm.loop !15

for.end52:                                        ; preds = %for.cond33
  %call53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %num) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
