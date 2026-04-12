; ModuleID = '<stdin>'
source_filename = "/tmp/tmp5yexsruf.cpp"
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
  %a = alloca [510 x i32], align 16
  %n = alloca i32, align 4
  %x = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 2040, ptr noundef align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %.pr = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %i.1, %for.inc ]
  %0 = phi i32 [ %dec, %for.inc ], [ %.pr, %entry ]
  %cmp = icmp sge i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x)
  %1 = load i32, ptr %x, align 4, !tbaa !5
  %rem = srem i32 %1, 2
  %cmp2 = icmp eq i32 %rem, 1
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [510 x i32], ptr %a, i64 0, i64 %idxprom
  store i32 %1, ptr %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %i.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %i.1 = phi i32 [ %inc, %if.then ], [ %i.0, %for.body ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %x, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc31, %for.end
  %3 = load i32, ptr %x, align 4, !tbaa !5
  %sub = sub nsw i32 %i.0, 1
  %cmp4 = icmp sle i32 %3, %sub
  br i1 %cmp4, label %for.body5, label %for.end33

for.body5:                                        ; preds = %for.cond3
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc28, %for.body5
  %j.0 = phi i32 [ %sub, %for.body5 ], [ %dec29, %for.inc28 ]
  %cmp8 = icmp sge i32 %j.0, %3
  br i1 %cmp8, label %for.body9, label %for.inc31

for.body9:                                        ; preds = %for.cond7
  %idxprom10 = sext i32 %j.0 to i64
  %arrayidx11 = getelementptr inbounds [510 x i32], ptr %a, i64 0, i64 %idxprom10
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !5, !invariant.load !12
  %sub12 = sub nsw i32 %j.0, 1
  %idxprom13 = sext i32 %sub12 to i64
  %arrayidx14 = getelementptr inbounds [510 x i32], ptr %a, i64 0, i64 %idxprom13
  %5 = load i32, ptr %arrayidx14, align 4, !tbaa !5, !invariant.load !12
  %cmp15 = icmp slt i32 %4, %5
  br i1 %cmp15, label %if.then16, label %for.inc28

if.then16:                                        ; preds = %for.body9
  store i32 %5, ptr %n, align 4, !tbaa !5
  store i32 %4, ptr %arrayidx14, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx11, align 4, !tbaa !5
  br label %for.inc28

for.inc28:                                        ; preds = %for.body9, %if.then16
  %dec29 = add nsw i32 %j.0, -1
  br label %for.cond7, !llvm.loop !13

for.inc31:                                        ; preds = %for.cond7
  %inc32 = add nsw i32 %3, 1
  store i32 %inc32, ptr %x, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !14

for.end33:                                        ; preds = %for.cond3
  %6 = load i32, ptr %a, align 16, !tbaa !5
  %call35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef %6)
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc44, %for.end33
  %j.1 = phi i32 [ 1, %for.end33 ], [ %inc45, %for.inc44 ]
  %cmp38 = icmp sle i32 %j.1, %sub
  br i1 %cmp38, label %for.inc44, label %for.end46

for.inc44:                                        ; preds = %for.cond36
  %call40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext 44)
  %idxprom41 = sext i32 %j.1 to i64
  %arrayidx42 = getelementptr inbounds [510 x i32], ptr %a, i64 0, i64 %idxprom41
  %7 = load i32, ptr %arrayidx42, align 4, !tbaa !5, !invariant.load !12
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call40, i32 noundef %7)
  %inc45 = add nsw i32 %j.1, 1
  br label %for.cond36, !llvm.loop !15

for.end46:                                        ; preds = %for.cond36
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
  call void @llvm.lifetime.end.p0(i64 noundef 2040, ptr noundef %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) local_unnamed_addr #4 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !16, !invariant.load !12
  ret i64 %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = !{!17, !18, i64 16}
!17 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !19, i64 24, !20, i64 28, !20, i64 32, !21, i64 40, !23, i64 48, !7, i64 64, !6, i64 192, !24, i64 200, !25, i64 208}
!18 = !{!"long", !7, i64 0}
!19 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!20 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!21 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = !{!"_ZTSNSt8ios_base6_WordsE", !22, i64 0, !18, i64 8}
!24 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !22, i64 0}
!25 = !{!"_ZTSSt6locale", !26, i64 0}
!26 = !{!"p1 _ZTSNSt6locale5_ImplE", !22, i64 0}
