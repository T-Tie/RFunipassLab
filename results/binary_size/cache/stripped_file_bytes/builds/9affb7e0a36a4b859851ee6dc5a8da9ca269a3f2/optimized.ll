; ModuleID = '/tmp/tmpor6vgau_.cpp'
source_filename = "/tmp/tmpor6vgau_.cpp"
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
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [1000000 x i8], align 16
  %N = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  %first = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 1000000, ptr %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %N) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 1000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1000000 x i8], ptr %a, i64 0, i64 %idxprom
  store i8 48, ptr %arrayidx, align 1, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds [1000000 x i8], ptr %a, i64 0, i64 0
  store i8 50, ptr %arrayidx1, align 16, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #5
  store i32 1, ptr %count, align 4, !tbaa !5
  %3 = load i32, ptr %N, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1)
  br label %if.end67

if.else:                                          ; preds = %for.end
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc49, %if.else
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %N, align 4, !tbaa !5
  %sub = sub nsw i32 %5, 1
  %cmp5 = icmp slt i32 %4, %sub
  br i1 %cmp5, label %for.body6, label %for.end51

for.body6:                                        ; preds = %for.cond4
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc16, %for.body6
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %6, 1000000
  br i1 %cmp8, label %for.body9, label %for.end18

for.body9:                                        ; preds = %for.cond7
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [1000000 x i8], ptr %a, i64 0, i64 %idxprom10
  %8 = load i8, ptr %arrayidx11, align 1, !tbaa !9
  %conv = sext i8 %8 to i32
  %sub12 = sub nsw i32 %conv, 48
  %mul = mul nsw i32 %sub12, 2
  %conv13 = trunc i32 %mul to i8
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom14 = sext i32 %9 to i64
  %arrayidx15 = getelementptr inbounds [1000000 x i8], ptr %a, i64 0, i64 %idxprom14
  store i8 %conv13, ptr %arrayidx15, align 1, !tbaa !9
  br label %for.inc16

for.inc16:                                        ; preds = %for.body9
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %inc17 = add nsw i32 %10, 1
  store i32 %inc17, ptr %j, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !13

for.end18:                                        ; preds = %for.cond7
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc46, %for.end18
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %11, 1000000
  br i1 %cmp20, label %for.body21, label %for.end48

for.body21:                                       ; preds = %for.cond19
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom22 = sext i32 %12 to i64
  %arrayidx23 = getelementptr inbounds [1000000 x i8], ptr %a, i64 0, i64 %idxprom22
  %13 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %conv24 = sext i8 %13 to i32
  %cmp25 = icmp sgt i32 %conv24, 9
  br i1 %cmp25, label %if.then26, label %if.else38

if.then26:                                        ; preds = %for.body21
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom27 = sext i32 %14 to i64
  %arrayidx28 = getelementptr inbounds [1000000 x i8], ptr %a, i64 0, i64 %idxprom27
  %15 = load i8, ptr %arrayidx28, align 1, !tbaa !9
  %conv29 = sext i8 %15 to i32
  %sub30 = sub nsw i32 %conv29, 10
  %add = add nsw i32 %sub30, 48
  %conv31 = trunc i32 %add to i8
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom32 = sext i32 %16 to i64
  %arrayidx33 = getelementptr inbounds [1000000 x i8], ptr %a, i64 0, i64 %idxprom32
  store i8 %conv31, ptr %arrayidx33, align 1, !tbaa !9
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %add34 = add nsw i32 %17, 1
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds [1000000 x i8], ptr %a, i64 0, i64 %idxprom35
  %18 = load i8, ptr %arrayidx36, align 1, !tbaa !9
  %inc37 = add i8 %18, 1
  store i8 %inc37, ptr %arrayidx36, align 1, !tbaa !9
  br label %if.end

if.else38:                                        ; preds = %for.body21
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom39 = sext i32 %19 to i64
  %arrayidx40 = getelementptr inbounds [1000000 x i8], ptr %a, i64 0, i64 %idxprom39
  %20 = load i8, ptr %arrayidx40, align 1, !tbaa !9
  %conv41 = sext i8 %20 to i32
  %add42 = add nsw i32 %conv41, 48
  %conv43 = trunc i32 %add42 to i8
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom44 = sext i32 %21 to i64
  %arrayidx45 = getelementptr inbounds [1000000 x i8], ptr %a, i64 0, i64 %idxprom44
  store i8 %conv43, ptr %arrayidx45, align 1, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.else38, %if.then26
  br label %for.inc46

for.inc46:                                        ; preds = %if.end
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %inc47 = add nsw i32 %22, 1
  store i32 %inc47, ptr %j, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !14

for.end48:                                        ; preds = %for.cond19
  br label %for.inc49

for.inc49:                                        ; preds = %for.end48
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %inc50 = add nsw i32 %23, 1
  store i32 %inc50, ptr %i, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !15

for.end51:                                        ; preds = %for.cond4
  call void @llvm.lifetime.start.p0(i64 4, ptr %first) #5
  store i32 0, ptr %first, align 4, !tbaa !5
  store i32 999999, ptr %i, align 4, !tbaa !5
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc65, %for.end51
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %cmp53 = icmp sge i32 %24, 0
  br i1 %cmp53, label %for.body54, label %for.end66

for.body54:                                       ; preds = %for.cond52
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom55 = sext i32 %25 to i64
  %arrayidx56 = getelementptr inbounds [1000000 x i8], ptr %a, i64 0, i64 %idxprom55
  %26 = load i8, ptr %arrayidx56, align 1, !tbaa !9
  %conv57 = sext i8 %26 to i32
  %cmp58 = icmp ne i32 %conv57, 48
  br i1 %cmp58, label %if.then60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body54
  %27 = load i32, ptr %first, align 4, !tbaa !5
  %cmp59 = icmp eq i32 %27, 1
  br i1 %cmp59, label %if.then60, label %if.end64

if.then60:                                        ; preds = %lor.lhs.false, %for.body54
  store i32 1, ptr %first, align 4, !tbaa !5
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom61 = sext i32 %28 to i64
  %arrayidx62 = getelementptr inbounds [1000000 x i8], ptr %a, i64 0, i64 %idxprom61
  %29 = load i8, ptr %arrayidx62, align 1, !tbaa !9
  %call63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %29)
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %lor.lhs.false
  br label %for.inc65

for.inc65:                                        ; preds = %if.end64
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %30, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  br label %for.cond52, !llvm.loop !16

for.end66:                                        ; preds = %for.cond52
  call void @llvm.lifetime.end.p0(i64 4, ptr %first) #5
  br label %if.end67

if.end67:                                         ; preds = %for.end66, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %N) #5
  call void @llvm.lifetime.end.p0(i64 1000000, ptr %a) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %__out, i8 noundef signext %__c) #3 {
entry:
  %retval = alloca ptr, align 8
  %__out.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !17
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !9
  %0 = load ptr, ptr %__out.addr, align 8, !tbaa !17, !nonnull !20, !align !21
  %vtable = load ptr, ptr %0, align 8, !tbaa !22
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %vbase.offset
  %call = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr)
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !17, !nonnull !20, !align !21
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %__c.addr, i64 noundef 1)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !17, !nonnull !20, !align !21
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !9
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3)
  %4 = load ptr, ptr %__out.addr, align 8, !tbaa !17, !nonnull !20, !align !21
  store ptr %4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) #4 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !24
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !26
  ret i64 %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTSSo", !19, i64 0}
!19 = !{!"any pointer", !7, i64 0}
!20 = !{}
!21 = !{i64 8}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !8, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSSt8ios_base", !19, i64 0}
!26 = !{!27, !28, i64 16}
!27 = !{!"_ZTSSt8ios_base", !28, i64 8, !28, i64 16, !29, i64 24, !30, i64 28, !30, i64 32, !31, i64 40, !32, i64 48, !7, i64 64, !6, i64 192, !33, i64 200, !34, i64 208}
!28 = !{!"long", !7, i64 0}
!29 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!30 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!31 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !19, i64 0}
!32 = !{!"_ZTSNSt8ios_base6_WordsE", !19, i64 0, !28, i64 8}
!33 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !19, i64 0}
!34 = !{!"_ZTSSt6locale", !35, i64 0}
!35 = !{!"p1 _ZTSNSt6locale5_ImplE", !19, i64 0}
