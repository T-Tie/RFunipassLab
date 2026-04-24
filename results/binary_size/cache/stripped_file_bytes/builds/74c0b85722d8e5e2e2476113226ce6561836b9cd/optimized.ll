; ModuleID = '/tmp/tmphqrd8e7w.cpp'
source_filename = "/tmp/tmphqrd8e7w.cpp"
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
  %n = alloca i32, align 4
  %a = alloca [20001 x i32], align 16
  %b = alloca [20001 x i32], align 16
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 80004, ptr %a) #5
  call void @llvm.lifetime.start.p0(i64 80004, ptr %b) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  store i32 %0, ptr %m, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [20001 x i32], ptr %b, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc11, %for.end
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end13

for.body3:                                        ; preds = %for.cond1
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [20001 x i32], ptr %a, i64 0, i64 %idxprom4
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx5)
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [20001 x i32], ptr %a, i64 0, i64 %idxprom7
  %9 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [20001 x i32], ptr %b, i64 0, i64 %idxprom9
  store i32 1, ptr %arrayidx10, align 4, !tbaa !5
  br label %for.inc11

for.inc11:                                        ; preds = %for.body3
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %inc12 = add nsw i32 %10, 1
  store i32 %inc12, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end13:                                        ; preds = %for.cond1
  store i32 2, ptr %i, align 4, !tbaa !5
  %arrayidx14 = getelementptr inbounds [20001 x i32], ptr %a, i64 0, i64 1
  %11 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %11)
  %arrayidx16 = getelementptr inbounds [20001 x i32], ptr %a, i64 0, i64 1
  %12 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %idxprom17 = sext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds [20001 x i32], ptr %b, i64 0, i64 %idxprom17
  store i32 0, ptr %arrayidx18, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end13
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [20001 x i32], ptr %a, i64 0, i64 %idxprom19
  %14 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %idxprom21 = sext i32 %14 to i64
  %arrayidx22 = getelementptr inbounds [20001 x i32], ptr %b, i64 0, i64 %idxprom21
  %15 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %15, 1
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %16 to i64
  %arrayidx26 = getelementptr inbounds [20001 x i32], ptr %a, i64 0, i64 %idxprom25
  %17 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %call27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call24, i32 noundef %17)
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %18 to i64
  %arrayidx29 = getelementptr inbounds [20001 x i32], ptr %a, i64 0, i64 %idxprom28
  %19 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %idxprom30 = sext i32 %19 to i64
  %arrayidx31 = getelementptr inbounds [20001 x i32], ptr %b, i64 0, i64 %idxprom30
  store i32 0, ptr %arrayidx31, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %20 = load i32, ptr %m, align 4, !tbaa !5
  %sub = sub nsw i32 %20, 1
  store i32 %sub, ptr %m, align 4, !tbaa !5
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %21, 1
  store i32 %add, ptr %i, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %22 = load i32, ptr %m, align 4, !tbaa !5
  %cmp32 = icmp sge i32 %22, 0
  br i1 %cmp32, label %do.body, label %do.end, !llvm.loop !13

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 80004, ptr %b) #5
  call void @llvm.lifetime.end.p0(i64 80004, ptr %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
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
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !14
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !17
  %0 = load ptr, ptr %__out.addr, align 8, !tbaa !14, !nonnull !18, !align !19
  %vtable = load ptr, ptr %0, align 8, !tbaa !20
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %vbase.offset
  %call = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr)
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !14, !nonnull !18, !align !19
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %__c.addr, i64 noundef 1)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !14, !nonnull !18, !align !19
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !17
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3)
  %4 = load ptr, ptr %__out.addr, align 8, !tbaa !14, !nonnull !18, !align !19
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
  store ptr %this, ptr %this.addr, align 8, !tbaa !22
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !24
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
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTSSo", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{}
!19 = !{i64 8}
!20 = !{!21, !21, i64 0}
!21 = !{!"vtable pointer", !8, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTSSt8ios_base", !16, i64 0}
!24 = !{!25, !26, i64 16}
!25 = !{!"_ZTSSt8ios_base", !26, i64 8, !26, i64 16, !27, i64 24, !28, i64 28, !28, i64 32, !29, i64 40, !30, i64 48, !7, i64 64, !6, i64 192, !31, i64 200, !32, i64 208}
!26 = !{!"long", !7, i64 0}
!27 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!28 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!29 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!30 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !26, i64 8}
!31 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!32 = !{!"_ZTSSt6locale", !33, i64 0}
!33 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
