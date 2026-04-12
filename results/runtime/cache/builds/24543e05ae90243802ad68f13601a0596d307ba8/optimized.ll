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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 noundef 20000, ptr noundef %words) #7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [1000 x [20 x i8]], ptr %words, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc55, %for.end
  %j.0 = phi i32 [ 0, %for.end ], [ %j.2, %for.inc55 ]
  %csum.0 = phi i32 [ 0, %for.end ], [ %csum.1, %for.inc55 ]
  %i.1 = phi i32 [ 0, %for.end ], [ %inc56, %for.inc55 ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %i.1, %1
  br i1 %cmp3, label %for.body4, label %for.end57

for.body4:                                        ; preds = %for.cond2
  %conv = sext i32 %csum.0 to i64
  %idxprom5 = sext i32 %i.1 to i64
  %arrayidx6 = getelementptr inbounds [1000 x [20 x i8]], ptr %words, i64 0, i64 %idxprom5
  %call8 = call i64 @strlen(ptr noundef %arrayidx6) #8
  %add = add i64 %conv, %call8
  %add9 = add i64 %add, 1
  %conv10 = trunc i64 %add9 to i32
  %cmp11 = icmp eq i32 %conv10, 81
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc25, %if.then
  %j.0.sink7 = phi i32 [ %j.0, %if.then ], [ %add16, %for.inc25 ]
  %_ZSt4cout.sink6 = phi ptr [ @_ZSt4cout, %if.then ], [ %call20, %for.inc25 ]
  %j.0.sink5 = phi i32 [ %j.0, %if.then ], [ %add16, %for.inc25 ]
  %idxprom12 = sext i32 %j.0.sink7 to i64
  %arrayidx13 = getelementptr inbounds [1000 x [20 x i8]], ptr %words, i64 0, i64 %idxprom12
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %_ZSt4cout.sink6, ptr noundef %arrayidx13)
  %add16 = add nsw i32 %j.0.sink5, 1
  %cmp18 = icmp sle i32 %add16, %i.1
  br i1 %cmp18, label %for.inc25, label %for.end27

for.inc25:                                        ; preds = %for.cond17
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %for.cond17, !llvm.loop !12

for.end27:                                        ; preds = %for.cond17
  br label %for.inc55.gvnsink.split

if.end:                                           ; preds = %for.body4
  %cmp29 = icmp sgt i32 %conv10, 81
  br i1 %cmp29, label %if.then30, label %for.inc55

if.then30:                                        ; preds = %if.end
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc44, %if.then30
  %j.0.sink4 = phi i32 [ %j.0, %if.then30 ], [ %add35, %for.inc44 ]
  %_ZSt4cout.sink3 = phi ptr [ @_ZSt4cout, %if.then30 ], [ %call39, %for.inc44 ]
  %j.0.sink2 = phi i32 [ %j.0, %if.then30 ], [ %add35, %for.inc44 ]
  %idxprom31 = sext i32 %j.0.sink4 to i64
  %arrayidx32 = getelementptr inbounds [1000 x [20 x i8]], ptr %words, i64 0, i64 %idxprom31
  %call34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %_ZSt4cout.sink3, ptr noundef %arrayidx32)
  %add35 = add nsw i32 %j.0.sink2, 1
  %cmp37 = icmp slt i32 %add35, %i.1
  br i1 %cmp37, label %for.inc44, label %for.end46

for.inc44:                                        ; preds = %for.cond36
  %call39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %for.cond36, !llvm.loop !13

for.end46:                                        ; preds = %for.cond36
  %call50 = call i64 @strlen(ptr noundef %arrayidx6) #8
  %add51 = add i64 %call50, 1
  %conv52 = trunc i64 %add51 to i32
  br label %for.inc55.gvnsink.split

for.inc55.gvnsink.split:                          ; preds = %for.end27, %for.end46
  %j.2.ph = phi i32 [ %add35, %for.end46 ], [ %add16, %for.end27 ]
  %csum.1.ph = phi i32 [ %conv52, %for.end46 ], [ 0, %for.end27 ]
  %call53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc55

for.inc55:                                        ; preds = %for.inc55.gvnsink.split, %if.end
  %j.2 = phi i32 [ %j.0, %if.end ], [ %j.2.ph, %for.inc55.gvnsink.split ]
  %csum.1 = phi i32 [ %conv10, %if.end ], [ %csum.1.ph, %for.inc55.gvnsink.split ]
  %inc56 = add nsw i32 %i.1, 1
  br label %for.cond2, !llvm.loop !14

for.end57:                                        ; preds = %for.cond2
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc71, %for.end57
  %j.0.sink1 = phi i32 [ %j.0, %for.end57 ], [ %add62, %for.inc71 ]
  %_ZSt4cout.sink = phi ptr [ @_ZSt4cout, %for.end57 ], [ %call66, %for.inc71 ]
  %j.0.sink = phi i32 [ %j.0, %for.end57 ], [ %add62, %for.inc71 ]
  %idxprom58 = sext i32 %j.0.sink1 to i64
  %arrayidx59 = getelementptr inbounds [1000 x [20 x i8]], ptr %words, i64 0, i64 %idxprom58
  %call61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %_ZSt4cout.sink, ptr noundef %arrayidx59)
  %add62 = add nsw i32 %j.0.sink, 1
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp64 = icmp slt i32 %add62, %2
  br i1 %cmp64, label %for.inc71, label %for.end73

for.inc71:                                        ; preds = %for.cond63
  %call66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %for.cond63, !llvm.loop !15

for.end73:                                        ; preds = %for.cond63
  call void @llvm.lifetime.end.p0(i64 noundef 20000, ptr noundef %words) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #7
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
