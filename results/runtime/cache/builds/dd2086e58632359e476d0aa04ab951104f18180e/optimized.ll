; ModuleID = '<stdin>'
source_filename = "/tmp/tmpcrsr4xh2.cpp"
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
  %s = alloca [500 x i32], align 16
  %t = alloca [500 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef align 16 %s) #5
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef align 16 %t) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j) #6
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %s, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %len) #6
  store i32 0, ptr %len, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc13, %for.end
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %2, %1
  br i1 %cmp3, label %for.body4, label %for.end15

for.body4:                                        ; preds = %for.cond2
  %idxprom5 = sext i32 %2 to i64
  %arrayidx6 = getelementptr inbounds [500 x i32], ptr %s, i64 0, i64 %idxprom5
  %3 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %rem = srem i32 %3, 2
  %cmp7 = icmp ne i32 %rem, 0
  br i1 %cmp7, label %if.then, label %for.inc13

if.then:                                          ; preds = %for.body4
  %4 = load i32, ptr %len, align 4, !tbaa !5
  %idxprom10 = sext i32 %4 to i64
  %arrayidx11 = getelementptr inbounds [500 x i32], ptr %t, i64 0, i64 %idxprom10
  store i32 %3, ptr %arrayidx11, align 4, !tbaa !5
  %inc12 = add nsw i32 %4, 1
  store i32 %inc12, ptr %len, align 4, !tbaa !5
  br label %for.inc13

for.inc13:                                        ; preds = %for.body4, %if.then
  %inc14 = add nsw i32 %2, 1
  store i32 %inc14, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.end15:                                        ; preds = %for.cond2
  %5 = load i32, ptr %len, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %5, 0
  br i1 %cmp16, label %cleanup, label %if.end18

if.end18:                                         ; preds = %for.end15
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc47, %if.end18
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %sub = sub nsw i32 %5, 1
  %cmp20 = icmp slt i32 %6, %sub
  br i1 %cmp20, label %for.body21, label %for.end49

for.body21:                                       ; preds = %for.cond19
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc44, %for.body21
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %sub24 = sub nsw i32 %sub, %6
  %cmp25 = icmp slt i32 %7, %sub24
  br i1 %cmp25, label %for.body26, label %for.inc47

for.body26:                                       ; preds = %for.cond22
  %idxprom27 = sext i32 %7 to i64
  %arrayidx28 = getelementptr inbounds [500 x i32], ptr %t, i64 0, i64 %idxprom27
  %8 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %add = add nsw i32 %7, 1
  %idxprom29 = sext i32 %add to i64
  %arrayidx30 = getelementptr inbounds [500 x i32], ptr %t, i64 0, i64 %idxprom29
  %9 = load i32, ptr %arrayidx30, align 4, !tbaa !5, !invariant.load !13
  %cmp31 = icmp sgt i32 %8, %9
  br i1 %cmp31, label %if.then32, label %for.inc44

if.then32:                                        ; preds = %for.body26
  store i32 %9, ptr %arrayidx28, align 4, !tbaa !5
  store i32 %8, ptr %arrayidx30, align 4, !tbaa !5
  br label %for.inc44

for.inc44:                                        ; preds = %for.body26, %if.then32
  store i32 %add, ptr %j, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !14

for.inc47:                                        ; preds = %for.cond22
  %inc48 = add nsw i32 %6, 1
  store i32 %inc48, ptr %i, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !15

for.end49:                                        ; preds = %for.cond19
  %10 = load i32, ptr %t, align 16, !tbaa !5
  %call51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef %10)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc59, %for.end49
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %11, %5
  br i1 %cmp53, label %for.inc59, label %cleanup

for.inc59:                                        ; preds = %for.cond52
  %call55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext 44)
  %idxprom56 = sext i32 %11 to i64
  %arrayidx57 = getelementptr inbounds [500 x i32], ptr %t, i64 0, i64 %idxprom56
  %12 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %call58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call55, i32 noundef %12)
  %inc60 = add nsw i32 %11, 1
  store i32 %inc60, ptr %i, align 4, !tbaa !5
  br label %for.cond52, !llvm.loop !16

cleanup:                                          ; preds = %for.cond52, %for.end15
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %len) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #6
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef %t) #6
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef %s) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %__out, i8 noundef signext %__c) local_unnamed_addr #3 {
entry:
  %retval = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !17
  %vtable = load ptr, ptr %__out, align 8, !tbaa !18
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !13
  %add.ptr = getelementptr inbounds i8, ptr %__out, i64 %vbase.offset
  %call = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr) #6
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__c.addr, i64 noundef 1)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i8, ptr %__c.addr, align 1, !tbaa !17
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %__out, i8 noundef signext %0)
  store ptr %__out, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load ptr, ptr %retval, align 8
  ret ptr %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) local_unnamed_addr #4 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !20
  ret i64 %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!12 = distinct !{!12, !10, !11}
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = !{!7, !7, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !8, i64 0}
!20 = !{!21, !22, i64 16}
!21 = !{!"_ZTSSt8ios_base", !22, i64 8, !22, i64 16, !23, i64 24, !24, i64 28, !24, i64 32, !25, i64 40, !27, i64 48, !7, i64 64, !6, i64 192, !28, i64 200, !29, i64 208}
!22 = !{!"long", !7, i64 0}
!23 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!24 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!25 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !26, i64 0}
!26 = !{!"any pointer", !7, i64 0}
!27 = !{!"_ZTSNSt8ios_base6_WordsE", !26, i64 0, !22, i64 8}
!28 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !26, i64 0}
!29 = !{!"_ZTSSt6locale", !30, i64 0}
!30 = !{!"p1 _ZTSNSt6locale5_ImplE", !26, i64 0}
