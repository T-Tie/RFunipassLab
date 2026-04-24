; ModuleID = '/tmp/tmpgub9m9w1.cpp'
source_filename = "/tmp/tmpgub9m9w1.cpp"
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
  %yw = alloca [150 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 150, ptr %yw) #7
  call void @llvm.memset.p0.i64(ptr align 16 %yw, i8 0, i64 150, i1 false)
  %arraydecay = getelementptr inbounds [150 x i8], ptr %yw, i64 0, i64 0
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef %arraydecay, i64 noundef 100, i8 noundef signext 10)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  %arraydecay1 = getelementptr inbounds [150 x i8], ptr %yw, i64 0, i64 0
  %call2 = call i64 @strlen(ptr noundef %arraydecay1) #8
  %conv = trunc i64 %call2 to i32
  store i32 %conv, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #7
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %sub = sub nsw i32 %0, 1
  store i32 %sub, ptr %s, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [150 x i8], ptr %yw, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 32
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %4, 1
  store i32 %add, ptr %j, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %if.then
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %6 = load i32, ptr %s, align 4, !tbaa !5
  %cmp6 = icmp sle i32 %5, %6
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [150 x i8], ptr %yw, i64 0, i64 %idxprom8
  %8 = load i8, ptr %arrayidx9, align 1, !tbaa !9
  %call10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !10

for.end:                                          ; preds = %for.cond5
  %call11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %sub12 = sub nsw i32 %10, 1
  store i32 %sub12, ptr %s, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %11, 0
  br i1 %cmp13, label %if.then14, label %if.end24

if.then14:                                        ; preds = %if.end
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc21, %if.then14
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %13 = load i32, ptr %s, align 4, !tbaa !5
  %cmp16 = icmp sle i32 %12, %13
  br i1 %cmp16, label %for.body17, label %for.end23

for.body17:                                       ; preds = %for.cond15
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds [150 x i8], ptr %yw, i64 0, i64 %idxprom18
  %15 = load i8, ptr %arrayidx19, align 1, !tbaa !9
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %15)
  br label %for.inc21

for.inc21:                                        ; preds = %for.body17
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %inc22 = add nsw i32 %16, 1
  store i32 %inc22, ptr %j, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !13

for.end23:                                        ; preds = %for.cond15
  br label %if.end24

if.end24:                                         ; preds = %for.end23, %if.end
  br label %for.inc25

for.inc25:                                        ; preds = %if.end24
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %17, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end26:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 150, ptr %yw) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %__out, i8 noundef signext %__c) #5 {
entry:
  %retval = alloca ptr, align 8
  %__out.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !15
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !9
  %0 = load ptr, ptr %__out.addr, align 8, !tbaa !15, !nonnull !18, !align !19
  %vtable = load ptr, ptr %0, align 8, !tbaa !20
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %vbase.offset
  %call = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr)
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !15, !nonnull !18, !align !19
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %__c.addr, i64 noundef 1)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !15, !nonnull !18, !align !19
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !9
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3)
  %4 = load ptr, ptr %__out.addr, align 8, !tbaa !15, !nonnull !18, !align !19
  store ptr %4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !22
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !24
  ret i64 %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTSSo", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{}
!19 = !{i64 8}
!20 = !{!21, !21, i64 0}
!21 = !{!"vtable pointer", !8, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTSSt8ios_base", !17, i64 0}
!24 = !{!25, !26, i64 16}
!25 = !{!"_ZTSSt8ios_base", !26, i64 8, !26, i64 16, !27, i64 24, !28, i64 28, !28, i64 32, !29, i64 40, !30, i64 48, !7, i64 64, !6, i64 192, !31, i64 200, !32, i64 208}
!26 = !{!"long", !7, i64 0}
!27 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!28 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!29 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!30 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !26, i64 8}
!31 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!32 = !{!"_ZTSSt6locale", !33, i64 0}
!33 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
