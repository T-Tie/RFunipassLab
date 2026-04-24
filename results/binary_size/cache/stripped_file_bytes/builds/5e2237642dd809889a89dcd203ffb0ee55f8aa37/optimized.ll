; ModuleID = '<stdin>'
source_filename = "/tmp/tmpfx1tmoua.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x2) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y2) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = zext i32 %2 to i64
  %4 = call ptr @llvm.stacksave.p0()
  %5 = mul nuw i64 %3, %1
  %vla = alloca i32, i64 %5, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.end ], [ 0, %entry ]
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %6, 0
  br i1 %cmp3, label %for.cond4.preheader, label %for.end13

for.cond4.preheader:                              ; preds = %for.cond
  %7 = mul nuw nsw i64 %indvars.iv54, %3
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %7
  br label %for.cond4

for.cond4:                                        ; preds = %for.cond4.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.inc ]
  %8 = load i32, ptr %y1, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp6.not.not = icmp slt i64 %indvars.iv, %9
  br i1 %cmp6.not.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond4
  %arrayidx9 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond

for.end13:                                        ; preds = %for.cond
  %call14 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call15 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call14, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  %10 = load i32, ptr %x2, align 4, !tbaa !5
  %11 = zext i32 %10 to i64
  %12 = load i32, ptr %y2, align 4, !tbaa !5
  %13 = zext i32 %12 to i64
  %14 = mul nuw i64 %13, %11
  %vla16 = alloca i32, i64 %14, align 16
  br label %for.cond18

for.cond18:                                       ; preds = %for.end33, %for.end13
  %15 = phi i32 [ %18, %for.end33 ], [ %12, %for.end13 ]
  %16 = phi i32 [ %.pre, %for.end33 ], [ %10, %for.end13 ]
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.end33 ], [ 0, %for.end13 ]
  %cmp20 = icmp sgt i32 %16, 0
  br i1 %cmp20, label %for.cond22.preheader, label %for.cond37

for.cond22.preheader:                             ; preds = %for.cond18
  %17 = mul nuw nsw i64 %indvars.iv60, %13
  %arrayidx27 = getelementptr inbounds nuw i32, ptr %vla16, i64 %17
  br label %for.cond22

for.cond22:                                       ; preds = %for.cond22.preheader, %for.inc31
  %18 = phi i32 [ %15, %for.cond22.preheader ], [ %.pre84, %for.inc31 ]
  %indvars.iv57 = phi i64 [ 0, %for.cond22.preheader ], [ %indvars.iv.next58, %for.inc31 ]
  %19 = sext i32 %18 to i64
  %cmp24.not.not = icmp slt i64 %indvars.iv57, %19
  br i1 %cmp24.not.not, label %for.inc31, label %for.end33

for.inc31:                                        ; preds = %for.cond22
  %arrayidx29 = getelementptr inbounds nuw i32, ptr %arrayidx27, i64 %indvars.iv57
  %call30 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx29)
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %.pre84 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !12

for.end33:                                        ; preds = %for.cond22
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %.pre = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.cond18

for.cond37:                                       ; preds = %for.cond18, %for.end107
  %20 = phi i32 [ %31, %for.end107 ], [ %15, %for.cond18 ]
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %for.end107 ], [ 0, %for.cond18 ]
  %21 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp39 = icmp sgt i32 %21, 0
  br i1 %cmp39, label %for.cond41.preheader, label %for.end110

for.cond41.preheader:                             ; preds = %for.cond37
  %22 = mul nuw nsw i64 %indvars.iv79, %3
  %arrayidx50 = getelementptr inbounds nuw i32, ptr %vla, i64 %22
  br label %for.cond41

for.cond41:                                       ; preds = %for.cond41.preheader, %for.inc70
  %23 = phi i32 [ %20, %for.cond41.preheader ], [ %.pre82, %for.inc70 ]
  %indvars.iv66 = phi i64 [ 0, %for.cond41.preheader ], [ %indvars.iv.next67, %for.inc70 ]
  %sub42 = add nsw i32 %23, -2
  %24 = sext i32 %sub42 to i64
  %cmp43.not = icmp sgt i64 %indvars.iv66, %24
  br i1 %cmp43.not, label %for.end72, label %for.cond45.preheader

for.cond45.preheader:                             ; preds = %for.cond41
  %25 = load i32, ptr %y1, align 4, !tbaa !5
  %invariant.gep = getelementptr inbounds nuw i32, ptr %vla16, i64 %indvars.iv66
  %smax = call i32 @llvm.smax.i32(i32 %25, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond45

for.cond45:                                       ; preds = %for.cond45.preheader, %for.inc57
  %indvars.iv63 = phi i64 [ 0, %for.cond45.preheader ], [ %indvars.iv.next64, %for.inc57 ]
  %d.2 = phi i32 [ 0, %for.cond45.preheader ], [ %add, %for.inc57 ]
  %exitcond.not = icmp eq i64 %indvars.iv63, %wide.trip.count
  br i1 %exitcond.not, label %for.inc70, label %for.inc57

for.inc57:                                        ; preds = %for.cond45
  %arrayidx52 = getelementptr inbounds nuw i32, ptr %arrayidx50, i64 %indvars.iv63
  %26 = load i32, ptr %arrayidx52, align 4, !tbaa !5, !invariant.load !13
  %27 = mul nuw nsw i64 %indvars.iv63, %13
  %gep = getelementptr inbounds nuw i32, ptr %invariant.gep, i64 %27
  %28 = load i32, ptr %gep, align 4, !tbaa !5, !invariant.load !13
  %mul = mul nsw i32 %28, %26
  %add = add nsw i32 %mul, %d.2
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br label %for.cond45, !llvm.loop !14

for.inc70:                                        ; preds = %for.cond45
  %call68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %d.2)
  %call69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call68, ptr noundef nonnull dereferenceable(2) @.str)
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %.pre82 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond41, !llvm.loop !15

for.end72:                                        ; preds = %for.cond41
  %29 = sext i32 %23 to i64
  %30 = add nsw i64 %29, -1
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc105, %for.end72
  %31 = phi i32 [ %.pre83, %for.inc105 ], [ %23, %for.end72 ]
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %for.inc105 ], [ %30, %for.end72 ]
  %32 = sext i32 %31 to i64
  %cmp76.not.not = icmp slt i64 %indvars.iv76, %32
  br i1 %cmp76.not.not, label %for.cond78.preheader, label %for.end107

for.cond78.preheader:                             ; preds = %for.cond74
  %33 = load i32, ptr %y1, align 4, !tbaa !5
  %invariant.gep51 = getelementptr i32, ptr %vla16, i64 %indvars.iv76
  %smax72 = call i32 @llvm.smax.i32(i32 %33, i32 noundef 0)
  %wide.trip.count73 = zext nneg i32 %smax72 to i64
  br label %for.cond78

for.cond78:                                       ; preds = %for.cond78.preheader, %for.inc92
  %indvars.iv69 = phi i64 [ 0, %for.cond78.preheader ], [ %indvars.iv.next70, %for.inc92 ]
  %d.4 = phi i32 [ 0, %for.cond78.preheader ], [ %add91, %for.inc92 ]
  %exitcond74.not = icmp eq i64 %indvars.iv69, %wide.trip.count73
  br i1 %exitcond74.not, label %for.inc105, label %for.inc92

for.inc92:                                        ; preds = %for.cond78
  %arrayidx85 = getelementptr inbounds nuw i32, ptr %arrayidx50, i64 %indvars.iv69
  %34 = load i32, ptr %arrayidx85, align 4, !tbaa !5, !invariant.load !13
  %35 = mul nuw nsw i64 %indvars.iv69, %13
  %gep52 = getelementptr i32, ptr %invariant.gep51, i64 %35
  %36 = load i32, ptr %gep52, align 4, !tbaa !5, !invariant.load !13
  %mul90 = mul nsw i32 %36, %34
  %add91 = add nsw i32 %mul90, %d.4
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  br label %for.cond78, !llvm.loop !16

for.inc105:                                       ; preds = %for.cond78
  %call103 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %d.4)
  %call104 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call103, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %indvars.iv.next77 = add nsw i64 %indvars.iv76, 1
  %.pre83 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond74, !llvm.loop !17

for.end107:                                       ; preds = %for.cond74
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  br label %for.cond37

for.end110:                                       ; preds = %for.cond37
  call void @llvm.stackrestore.p0(ptr %4)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
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
!12 = distinct !{!12, !10, !11}
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
