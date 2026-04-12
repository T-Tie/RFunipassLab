; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_7fz4w5h.cpp"
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
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %words = alloca [1000 x [20 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 noundef 20000, ptr noundef nonnull %words) #7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x [20 x i8]], ptr %words, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond, %for.inc55
  %.pre22 = phi i32 [ %.pre, %for.inc55 ], [ %0, %for.cond ]
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.inc55 ], [ 0, %for.cond ]
  %j.0 = phi i32 [ %j.2, %for.inc55 ], [ 0, %for.cond ]
  %csum.0 = phi i64 [ %csum.1, %for.inc55 ], [ 0, %for.cond ]
  %2 = sext i32 %.pre22 to i64
  %cmp3 = icmp slt i64 %indvars.iv15, %2
  br i1 %cmp3, label %for.body4, label %for.cond63.preheader

for.cond63.preheader:                             ; preds = %for.cond2
  %3 = sext i32 %j.0 to i64
  br label %for.cond63

for.body4:                                        ; preds = %for.cond2
  %sext = shl i64 %csum.0, 32
  %conv = ashr exact i64 %sext, 32
  %arrayidx6 = getelementptr inbounds nuw [1000 x [20 x i8]], ptr %words, i64 0, i64 %indvars.iv15
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx6) #8
  %add = add nsw i64 %conv, 1
  %add9 = add i64 %add, %call8
  %conv10 = trunc i64 %add9 to i32
  %cmp11 = icmp eq i32 %conv10, 81
  br i1 %cmp11, label %for.cond17.preheader, label %if.end

for.cond17.preheader:                             ; preds = %for.body4
  %4 = sext i32 %j.0 to i64
  br label %for.cond17

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc25
  %indvars.iv12 = phi i64 [ %4, %for.cond17.preheader ], [ %indvars.iv.next13, %for.inc25 ]
  %_ZSt4cout.sink6 = phi ptr [ @_ZSt4cout, %for.cond17.preheader ], [ %call20, %for.inc25 ]
  %arrayidx13 = getelementptr inbounds [1000 x [20 x i8]], ptr %words, i64 0, i64 %indvars.iv12
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %_ZSt4cout.sink6, ptr noundef nonnull %arrayidx13)
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, 1
  %cmp18.not.not = icmp slt i64 %indvars.iv12, %indvars.iv15
  br i1 %cmp18.not.not, label %for.inc25, label %for.inc55.gvnsink.split

for.inc25:                                        ; preds = %for.cond17
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %for.cond17, !llvm.loop !12

if.end:                                           ; preds = %for.body4
  %cmp29 = icmp sgt i32 %conv10, 81
  br i1 %cmp29, label %for.cond36.preheader, label %for.inc55

for.cond36.preheader:                             ; preds = %if.end
  %5 = sext i32 %j.0 to i64
  br label %for.cond36

for.cond36:                                       ; preds = %for.cond36.preheader, %for.inc44
  %indvars.iv9 = phi i64 [ %5, %for.cond36.preheader ], [ %indvars.iv.next10, %for.inc44 ]
  %_ZSt4cout.sink3 = phi ptr [ @_ZSt4cout, %for.cond36.preheader ], [ %call39, %for.inc44 ]
  %arrayidx32 = getelementptr inbounds [1000 x [20 x i8]], ptr %words, i64 0, i64 %indvars.iv9
  %call34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %_ZSt4cout.sink3, ptr noundef nonnull %arrayidx32)
  %indvars.iv.next10 = add nsw i64 %indvars.iv9, 1
  %cmp37 = icmp slt i64 %indvars.iv.next10, %indvars.iv15
  br i1 %cmp37, label %for.inc44, label %for.end46

for.inc44:                                        ; preds = %for.cond36
  %call39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %for.cond36, !llvm.loop !13

for.end46:                                        ; preds = %for.cond36
  %call50 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx6) #8
  %add51 = add i64 %call50, 1
  br label %for.inc55.gvnsink.split

for.inc55.gvnsink.split:                          ; preds = %for.cond17, %for.end46
  %j.2.ph.in = phi i64 [ %indvars.iv.next10, %for.end46 ], [ %indvars.iv.next13, %for.cond17 ]
  %csum.1.ph = phi i64 [ %add51, %for.end46 ], [ 0, %for.cond17 ]
  %j.2.ph = trunc i64 %j.2.ph.in to i32
  %call53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %.pre.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc55

for.inc55:                                        ; preds = %for.inc55.gvnsink.split, %if.end
  %.pre = phi i32 [ %.pre22, %if.end ], [ %.pre.pre, %for.inc55.gvnsink.split ]
  %j.2 = phi i32 [ %j.0, %if.end ], [ %j.2.ph, %for.inc55.gvnsink.split ]
  %csum.1 = phi i64 [ %add9, %if.end ], [ %csum.1.ph, %for.inc55.gvnsink.split ]
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond2, !llvm.loop !14

for.cond63:                                       ; preds = %for.cond63.preheader, %for.inc71
  %indvars.iv19 = phi i64 [ %3, %for.cond63.preheader ], [ %indvars.iv.next20, %for.inc71 ]
  %_ZSt4cout.sink = phi ptr [ @_ZSt4cout, %for.cond63.preheader ], [ %call66, %for.inc71 ]
  %arrayidx59 = getelementptr inbounds [1000 x [20 x i8]], ptr %words, i64 0, i64 %indvars.iv19
  %call61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %_ZSt4cout.sink, ptr noundef nonnull %arrayidx59)
  %indvars.iv.next20 = add nsw i64 %indvars.iv19, 1
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp64 = icmp slt i64 %indvars.iv.next20, %7
  br i1 %cmp64, label %for.inc71, label %for.end73

for.inc71:                                        ; preds = %for.cond63
  %call66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %for.cond63, !llvm.loop !15

for.end73:                                        ; preds = %for.cond63
  call void @llvm.lifetime.end.p0(i64 noundef 20000, ptr noundef nonnull %words) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
