; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8wk7ea_s.cpp"
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
  %N = alloca i32, align 4
  %c = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %N) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %c) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc3, %for.inc ]
  %n.0 = phi i32 [ 0, %entry ], [ %n.1, %for.inc ]
  %3 = load i32, ptr %N, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %c)
  %4 = load i32, ptr %c, align 4, !tbaa !5
  %5 = and i32 %4, -2147483647
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %idxprom = sext i32 %n.0 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  store i32 %4, ptr %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %n.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %n.1 = phi i32 [ %inc, %if.then ], [ %n.0, %for.body ]
  %inc3 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %6 = zext i32 %n.0 to i64
  %vla4 = alloca i32, i64 %6, align 16
  %smax = call i32 @llvm.smax.i32(i32 %n.0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc14, %for.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc14 ], [ 0, %for.end ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond18.preheader, label %for.inc14

for.cond18.preheader:                             ; preds = %for.cond6
  %7 = add i32 %n.0, -1
  br label %for.cond18

for.inc14:                                        ; preds = %for.cond6
  %arrayidx11 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  %8 = load i32, ptr %arrayidx11, align 4, !tbaa !5, !invariant.load !12
  %arrayidx13 = getelementptr inbounds nuw i32, ptr %vla4, i64 %indvars.iv
  store i32 %8, ptr %arrayidx13, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond6, !llvm.loop !13

for.cond18:                                       ; preds = %for.cond18.preheader, %for.inc46
  %indvars.iv32 = phi i32 [ %7, %for.cond18.preheader ], [ %indvars.iv.next33, %for.inc46 ]
  %i17.0 = phi i32 [ %n.0, %for.cond18.preheader ], [ %dec, %for.inc46 ]
  %cmp19 = icmp sgt i32 %i17.0, -1
  br i1 %cmp19, label %for.cond22.preheader, label %for.cond49.preheader

for.cond22.preheader:                             ; preds = %for.cond18
  %smax34 = call i32 @llvm.smax.i32(i32 %indvars.iv32, i32 noundef 0)
  %wide.trip.count35 = zext nneg i32 %smax34 to i64
  br label %for.cond22

for.cond49.preheader:                             ; preds = %for.cond18
  %9 = zext i32 %7 to i64
  br label %for.cond49

for.cond22:                                       ; preds = %for.cond22.preheader, %for.inc43
  %indvars.iv28 = phi i64 [ 0, %for.cond22.preheader ], [ %indvars.iv.next29, %for.inc43 ]
  %exitcond36.not = icmp eq i64 %indvars.iv28, %wide.trip.count35
  br i1 %exitcond36.not, label %for.inc46, label %for.body25

for.body25:                                       ; preds = %for.cond22
  %arrayidx27 = getelementptr inbounds nuw i32, ptr %vla4, i64 %indvars.iv28
  %10 = load i32, ptr %arrayidx27, align 4, !tbaa !5, !invariant.load !12
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %arrayidx29 = getelementptr inbounds nuw i32, ptr %vla4, i64 %indvars.iv.next29
  %11 = load i32, ptr %arrayidx29, align 4, !tbaa !5, !invariant.load !12
  %cmp30 = icmp sgt i32 %10, %11
  br i1 %cmp30, label %if.then31, label %for.inc43

if.then31:                                        ; preds = %for.body25
  store i32 %10, ptr %arrayidx29, align 4, !tbaa !5
  store i32 %11, ptr %arrayidx27, align 4, !tbaa !5
  br label %for.inc43

for.inc43:                                        ; preds = %for.body25, %if.then31
  br label %for.cond22, !llvm.loop !14

for.inc46:                                        ; preds = %for.cond22
  %dec = add nsw i32 %i17.0, -1
  %indvars.iv.next33 = add nsw i32 %indvars.iv32, -1
  br label %for.cond18, !llvm.loop !15

for.cond49:                                       ; preds = %for.cond49.preheader, %for.inc65
  %indvars.iv37 = phi i64 [ 0, %for.cond49.preheader ], [ %indvars.iv.next38, %for.inc65 ]
  %exitcond41.not = icmp eq i64 %indvars.iv37, %wide.trip.count
  br i1 %exitcond41.not, label %for.end67, label %for.body52

for.body52:                                       ; preds = %for.cond49
  %cmp54 = icmp eq i64 %indvars.iv37, %9
  %12 = getelementptr inbounds nuw i32, ptr %vla4, i64 %indvars.iv37
  %13 = load i32, ptr %12, align 4, !tbaa !5, !invariant.load !12
  %call58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %13)
  br i1 %cmp54, label %if.then55, label %if.else

if.then55:                                        ; preds = %for.body52
  %call59 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call58, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc65

if.else:                                          ; preds = %for.body52
  %call63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call58, i8 noundef signext 44)
  br label %for.inc65

for.inc65:                                        ; preds = %if.then55, %if.else
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond49, !llvm.loop !16

for.end67:                                        ; preds = %for.cond49
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %c) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %N) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nounwind }

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
!16 = distinct !{!16, !10, !11}
