; ModuleID = '<stdin>'
source_filename = "/tmp/tmpve487bmo.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

$_ZNKSt8ios_base5widthEv = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [20000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 80000, ptr noundef align 16 %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc15, %for.inc14 ]
  %counter.0 = phi i32 [ 0, %entry ], [ %counter.1, %for.inc14 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp3 = icmp slt i32 %j.0, %i.0
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %idxprom7 = sext i32 %j.0 to i64
  %arrayidx8 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom7
  %2 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %1, %2
  br i1 %cmp9, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body4
  %inc = add nsw i32 %j.0, 1
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.body4, %for.cond2
  %cmp10 = icmp eq i32 %i.0, %j.0
  br i1 %cmp10, label %if.then11, label %for.inc14

if.then11:                                        ; preds = %for.end
  %inc12 = add nsw i32 %counter.0, 1
  br label %for.inc14

for.inc14:                                        ; preds = %for.end, %if.then11
  %counter.1 = phi i32 [ %inc12, %if.then11 ], [ %counter.0, %for.end ]
  %inc15 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end16:                                        ; preds = %for.cond
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc43, %for.end16
  %i.1 = phi i32 [ 0, %for.end16 ], [ %inc44, %for.inc43 ]
  %counter.2 = phi i32 [ %counter.0, %for.end16 ], [ %counter.3, %for.inc43 ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %i.1, %3
  br i1 %cmp18, label %for.body19, label %for.end45

for.body19:                                       ; preds = %for.cond17
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc30, %for.body19
  %j.1 = phi i32 [ 0, %for.body19 ], [ %inc31, %for.inc30 ]
  %cmp21 = icmp slt i32 %j.1, %i.1
  br i1 %cmp21, label %for.body22, label %for.end32

for.body22:                                       ; preds = %for.cond20
  %idxprom23 = sext i32 %i.1 to i64
  %arrayidx24 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom23
  %4 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %idxprom25 = sext i32 %j.1 to i64
  %arrayidx26 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom25
  %5 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %cmp27 = icmp eq i32 %4, %5
  br i1 %cmp27, label %for.end32, label %for.inc30

for.inc30:                                        ; preds = %for.body22
  %inc31 = add nsw i32 %j.1, 1
  br label %for.cond20, !llvm.loop !13

for.end32:                                        ; preds = %for.body22, %for.cond20
  %cmp33 = icmp eq i32 %i.1, %j.1
  br i1 %cmp33, label %if.then34, label %for.inc43

if.then34:                                        ; preds = %for.end32
  %idxprom35 = sext i32 %i.1 to i64
  %arrayidx36 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom35
  %6 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %call37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %6)
  %dec = add nsw i32 %counter.2, -1
  %cmp38 = icmp ne i32 %dec, 0
  br i1 %cmp38, label %if.then39, label %for.inc43

if.then39:                                        ; preds = %if.then34
  %call40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %for.inc43

for.inc43:                                        ; preds = %for.end32, %if.then39, %if.then34
  %counter.3 = phi i32 [ %counter.2, %for.end32 ], [ %dec, %if.then39 ], [ 0, %if.then34 ]
  %inc44 = add nsw i32 %i.1, 1
  br label %for.cond17, !llvm.loop !14

for.end45:                                        ; preds = %for.cond17
  call void @llvm.lifetime.end.p0(i64 noundef 80000, ptr noundef %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) local_unnamed_addr #4 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !15
  ret i64 %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!15 = !{!16, !17, i64 16}
!16 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !18, i64 24, !19, i64 28, !19, i64 32, !20, i64 40, !22, i64 48, !7, i64 64, !6, i64 192, !23, i64 200, !24, i64 208}
!17 = !{!"long", !7, i64 0}
!18 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!19 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!20 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !21, i64 0}
!21 = !{!"any pointer", !7, i64 0}
!22 = !{!"_ZTSNSt8ios_base6_WordsE", !21, i64 0, !17, i64 8}
!23 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !21, i64 0}
!24 = !{!"_ZTSSt6locale", !25, i64 0}
!25 = !{!"p1 _ZTSNSt6locale5_ImplE", !21, i64 0}
