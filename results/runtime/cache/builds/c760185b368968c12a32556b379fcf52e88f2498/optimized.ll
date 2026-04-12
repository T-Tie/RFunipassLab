; ModuleID = '<stdin>'
source_filename = "/tmp/tmpi8yzlnnp.cpp"
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
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %a = alloca [101 x [101 x i32]], align 16
  %b = alloca [101 x [101 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x2) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y2) #5
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull %b) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.inc9 ], [ 1, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv27, %1
  br i1 %cmp.not, label %for.end11, label %for.cond2

for.cond2:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3.not = icmp sgt i64 %indvars.iv, %3
  br i1 %cmp3.not, label %for.inc9, label %for.inc

for.inc:                                          ; preds = %for.cond2
  %arrayidx7 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv27, i64 %indvars.iv
  %call8 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx7)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.inc9:                                         ; preds = %for.cond2
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond, !llvm.loop !12

for.end11:                                        ; preds = %for.cond
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call13 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call12, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc32, %for.end11
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.inc32 ], [ 1, %for.end11 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp16.not = icmp sgt i64 %indvars.iv33, %5
  br i1 %cmp16.not, label %for.cond36, label %for.cond20

for.cond20:                                       ; preds = %for.cond15, %for.inc29
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.inc29 ], [ 1, %for.cond15 ]
  %6 = load i32, ptr %y2, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp21.not = icmp sgt i64 %indvars.iv30, %7
  br i1 %cmp21.not, label %for.inc32, label %for.inc29

for.inc29:                                        ; preds = %for.cond20
  %arrayidx27 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv33, i64 %indvars.iv30
  %call28 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx27)
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond20, !llvm.loop !13

for.inc32:                                        ; preds = %for.cond20
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond15, !llvm.loop !14

for.cond36:                                       ; preds = %for.cond15, %for.inc84
  %i35.0 = phi i32 [ %inc85, %for.inc84 ], [ 1, %for.cond15 ]
  %8 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp37.not = icmp sgt i32 %i35.0, %8
  br i1 %cmp37.not, label %for.end86, label %for.cond41

for.cond41:                                       ; preds = %for.cond36, %for.inc80
  %j40.0 = phi i32 [ %inc81, %for.inc80 ], [ 1, %for.cond36 ]
  %9 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp42.not = icmp sgt i32 %j40.0, %9
  br i1 %cmp42.not, label %for.inc84, label %for.cond49.preheader

for.cond49.preheader:                             ; preds = %for.cond41
  %cmp68 = icmp eq i32 %j40.0, 1
  br i1 %cmp68, label %for.inc80, label %if.else

if.else:                                          ; preds = %for.cond49.preheader
  %call74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  br label %for.inc80

for.inc80:                                        ; preds = %for.cond49.preheader, %if.else
  %_ZSt4cout.sink = phi ptr [ %call74, %if.else ], [ @_ZSt4cout, %for.cond49.preheader ]
  %call73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %_ZSt4cout.sink, i32 noundef 0)
  %inc81 = add nuw nsw i32 %j40.0, 1
  br label %for.cond41, !llvm.loop !15

for.inc84:                                        ; preds = %for.cond41
  %call83 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc85 = add nuw nsw i32 %i35.0, 1
  br label %for.cond36, !llvm.loop !16

for.end86:                                        ; preds = %for.cond36
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!16 = distinct !{!16, !10, !11}
