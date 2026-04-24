; ModuleID = '/tmp/tmphc6f2by6.cpp'
source_filename = "/tmp/tmphc6f2by6.cpp"
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
  %s = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %i2 = alloca i32, align 4
  %i31 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #6
  store i32 1, ptr %s, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 16
  store i64 %1, ptr %__vla_expr0, align 8
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = zext i32 %3 to i64
  %vla1 = alloca i32, i64 %4, align 16
  store i64 %4, ptr %__vla_expr1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i2) #6
  store i32 0, ptr %i2, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i2, align 4, !tbaa !5
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i2) #6
  br label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %i2, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i2, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i2, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup
  %arrayidx4 = getelementptr inbounds i32, ptr %vla, i64 0
  %9 = load i32, ptr %arrayidx4, align 16, !tbaa !5
  %arrayidx5 = getelementptr inbounds i32, ptr %vla1, i64 0
  store i32 %9, ptr %arrayidx5, align 16, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc28, %for.end
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %10, %11
  br i1 %cmp7, label %for.body8, label %for.end30

for.body8:                                        ; preds = %for.cond6
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc17, %for.body8
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %13 = load i32, ptr %s, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %12, %13
  br i1 %cmp10, label %for.body11, label %for.end19

for.body11:                                       ; preds = %for.cond9
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %vla, i64 %idxprom12
  %15 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom14
  %17 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %15, %17
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.body11
  br label %for.end19

if.end:                                           ; preds = %for.body11
  br label %for.inc17

for.inc17:                                        ; preds = %if.end
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %inc18 = add nsw i32 %18, 1
  store i32 %inc18, ptr %j, align 4, !tbaa !5
  br label %for.cond9, !llvm.loop !12

for.end19:                                        ; preds = %if.then, %for.cond9
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %20 = load i32, ptr %s, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %19, %20
  br i1 %cmp20, label %if.then21, label %if.end27

if.then21:                                        ; preds = %for.end19
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %vla, i64 %idxprom22
  %22 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %23 = load i32, ptr %s, align 4, !tbaa !5
  %idxprom24 = sext i32 %23 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom24
  store i32 %22, ptr %arrayidx25, align 4, !tbaa !5
  %24 = load i32, ptr %s, align 4, !tbaa !5
  %inc26 = add nsw i32 %24, 1
  store i32 %inc26, ptr %s, align 4, !tbaa !5
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %for.end19
  br label %for.inc28

for.inc28:                                        ; preds = %if.end27
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %inc29 = add nsw i32 %25, 1
  store i32 %inc29, ptr %i, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !13

for.end30:                                        ; preds = %for.cond6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i31) #6
  store i32 0, ptr %i31, align 4, !tbaa !5
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc40, %for.end30
  %26 = load i32, ptr %i31, align 4, !tbaa !5
  %27 = load i32, ptr %s, align 4, !tbaa !5
  %sub = sub nsw i32 %27, 1
  %cmp33 = icmp slt i32 %26, %sub
  br i1 %cmp33, label %for.body35, label %for.cond.cleanup34

for.cond.cleanup34:                               ; preds = %for.cond32
  call void @llvm.lifetime.end.p0(i64 4, ptr %i31) #6
  br label %for.end42

for.body35:                                       ; preds = %for.cond32
  %28 = load i32, ptr %i31, align 4, !tbaa !5
  %idxprom36 = sext i32 %28 to i64
  %arrayidx37 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom36
  %29 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %call38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %29)
  %call39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call38, i8 noundef signext 32)
  br label %for.inc40

for.inc40:                                        ; preds = %for.body35
  %30 = load i32, ptr %i31, align 4, !tbaa !5
  %inc41 = add nsw i32 %30, 1
  store i32 %inc41, ptr %i31, align 4, !tbaa !5
  br label %for.cond32, !llvm.loop !14

for.end42:                                        ; preds = %for.cond.cleanup34
  %31 = load i32, ptr %s, align 4, !tbaa !5
  %sub43 = sub nsw i32 %31, 1
  %idxprom44 = sext i32 %sub43 to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom44
  %32 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %call46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %32)
  store i32 0, ptr %retval, align 4
  %33 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %33)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
  %34 = load i32, ptr %retval, align 4
  ret i32 %34
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %__out, i8 noundef signext %__c) #4 {
entry:
  %retval = alloca ptr, align 8
  %__out.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !15
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !18
  %0 = load ptr, ptr %__out.addr, align 8, !tbaa !15, !nonnull !19, !align !20
  %vtable = load ptr, ptr %0, align 8, !tbaa !21
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %vbase.offset
  %call = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr)
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !15, !nonnull !19, !align !20
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %__c.addr, i64 noundef 1)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !15, !nonnull !19, !align !20
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !18
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3)
  %4 = load ptr, ptr %__out.addr, align 8, !tbaa !15, !nonnull !19, !align !20
  store ptr %4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) #5 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !23
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !25
  ret i64 %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTSSo", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!7, !7, i64 0}
!19 = !{}
!20 = !{i64 8}
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !8, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTSSt8ios_base", !17, i64 0}
!25 = !{!26, !27, i64 16}
!26 = !{!"_ZTSSt8ios_base", !27, i64 8, !27, i64 16, !28, i64 24, !29, i64 28, !29, i64 32, !30, i64 40, !31, i64 48, !7, i64 64, !6, i64 192, !32, i64 200, !33, i64 208}
!27 = !{!"long", !7, i64 0}
!28 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!29 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!30 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!31 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !27, i64 8}
!32 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!33 = !{!"_ZTSSt6locale", !34, i64 0}
!34 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
