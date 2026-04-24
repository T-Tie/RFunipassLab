; ModuleID = '/tmp/tmpv2srr9yz.cpp'
source_filename = "/tmp/tmpv2srr9yz.cpp"
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
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca i32, align 4
  %a = alloca [500 x i32], align 16
  %N = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #5
  call void @llvm.lifetime.start.p0(i64 2000, ptr %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %N) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %N, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  %4 = load i32, ptr %N, align 4, !tbaa !5
  store i32 %4, ptr %m, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc13, %for.end
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %6 = load i32, ptr %N, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body4, label %for.end15

for.body4:                                        ; preds = %for.cond2
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom5
  %8 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %rem = srem i32 %8, 2
  %cmp7 = icmp ne i32 %rem, 0
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body4
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom8
  %10 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %inc10 = add nsw i32 %11, 1
  store i32 %inc10, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom11
  store i32 %10, ptr %arrayidx12, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %for.body4
  %12 = load i32, ptr %m, align 4, !tbaa !5
  %dec = add nsw i32 %12, -1
  store i32 %dec, ptr %m, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc13

for.inc13:                                        ; preds = %if.end
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %inc14 = add nsw i32 %13, 1
  store i32 %inc14, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.end15:                                        ; preds = %for.cond2
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc44, %for.end15
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %15 = load i32, ptr %m, align 4, !tbaa !5
  %sub = sub nsw i32 %15, 1
  %cmp17 = icmp slt i32 %14, %sub
  br i1 %cmp17, label %for.body18, label %for.end46

for.body18:                                       ; preds = %for.cond16
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc41, %for.body18
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %17 = load i32, ptr %m, align 4, !tbaa !5
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %sub20 = sub nsw i32 %17, %18
  %sub21 = sub nsw i32 %sub20, 1
  %cmp22 = icmp slt i32 %16, %sub21
  br i1 %cmp22, label %for.body23, label %for.end43

for.body23:                                       ; preds = %for.cond19
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom24 = sext i32 %19 to i64
  %arrayidx25 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom24
  %20 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %21, 1
  %idxprom26 = sext i32 %add to i64
  %arrayidx27 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom26
  %22 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %cmp28 = icmp sgt i32 %20, %22
  br i1 %cmp28, label %if.then29, label %if.end40

if.then29:                                        ; preds = %for.body23
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom30 = sext i32 %23 to i64
  %arrayidx31 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom30
  %24 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  store i32 %24, ptr %temp, align 4, !tbaa !5
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %add32 = add nsw i32 %25, 1
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom33
  %26 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom35 = sext i32 %27 to i64
  %arrayidx36 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom35
  store i32 %26, ptr %arrayidx36, align 4, !tbaa !5
  %28 = load i32, ptr %temp, align 4, !tbaa !5
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %add37 = add nsw i32 %29, 1
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom38
  store i32 %28, ptr %arrayidx39, align 4, !tbaa !5
  br label %if.end40

if.end40:                                         ; preds = %if.then29, %for.body23
  br label %for.inc41

for.inc41:                                        ; preds = %if.end40
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %inc42 = add nsw i32 %30, 1
  store i32 %inc42, ptr %j, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !13

for.end43:                                        ; preds = %for.cond19
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %inc45 = add nsw i32 %31, 1
  store i32 %inc45, ptr %i, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !14

for.end46:                                        ; preds = %for.cond16
  %arrayidx47 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 0
  %32 = load i32, ptr %arrayidx47, align 16, !tbaa !5
  %call48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %32)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc56, %for.end46
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %34 = load i32, ptr %m, align 4, !tbaa !5
  %cmp50 = icmp slt i32 %33, %34
  br i1 %cmp50, label %for.body51, label %for.end58

for.body51:                                       ; preds = %for.cond49
  %call52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 44)
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %35 to i64
  %arrayidx54 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom53
  %36 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %call55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call52, i32 noundef %36)
  br label %for.inc56

for.inc56:                                        ; preds = %for.body51
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %inc57 = add nsw i32 %37, 1
  store i32 %inc57, ptr %i, align 4, !tbaa !5
  br label %for.cond49, !llvm.loop !15

for.end58:                                        ; preds = %for.cond49
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %N) #5
  call void @llvm.lifetime.end.p0(i64 2000, ptr %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
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
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !16
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !19
  %0 = load ptr, ptr %__out.addr, align 8, !tbaa !16, !nonnull !20, !align !21
  %vtable = load ptr, ptr %0, align 8, !tbaa !22
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %vbase.offset
  %call = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr)
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !16, !nonnull !20, !align !21
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %__c.addr, i64 noundef 1)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !16, !nonnull !20, !align !21
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !19
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3)
  %4 = load ptr, ptr %__out.addr, align 8, !tbaa !16, !nonnull !20, !align !21
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTSSo", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!7, !7, i64 0}
!20 = !{}
!21 = !{i64 8}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !8, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSSt8ios_base", !18, i64 0}
!26 = !{!27, !28, i64 16}
!27 = !{!"_ZTSSt8ios_base", !28, i64 8, !28, i64 16, !29, i64 24, !30, i64 28, !30, i64 32, !31, i64 40, !32, i64 48, !7, i64 64, !6, i64 192, !33, i64 200, !34, i64 208}
!28 = !{!"long", !7, i64 0}
!29 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!30 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!31 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!32 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !28, i64 8}
!33 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!34 = !{!"_ZTSSt6locale", !35, i64 0}
!35 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
