; ModuleID = '<stdin>'
source_filename = "/tmp/tmpaex_6jkt.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }

$_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_ = comdat any

$_ZNKSt8ios_base5widthEv = comdat any

$_ZNSt8ios_base5widthEl = comdat any

$_ZNSt11char_traitsIcE11eq_int_typeERKiS2_ = comdat any

$_ZNSt11char_traitsIcE3eofEv = comdat any

@a = dso_local global [100 x i8] zeroinitializer, align 16
@i = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@_ZSt3cin = external global %"class.std::basic_istream", align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_Z2sfv() local_unnamed_addr #0 {
entry:
  %p = alloca ptr, align 8
  %call = call i64 @strlen(ptr noundef readonly @a) #9
  %conv = trunc i64 %call to i32
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef align 8 %p) #10
  store ptr @a, ptr %p, align 8, !tbaa !5
  store i32 0, ptr @i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @i, align 4, !tbaa !10
  %cmp = icmp slt i32 %0, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %p, align 8, !tbaa !5
  %2 = load i8, ptr %1, align 1, !tbaa !12, !invariant.load !13
  %conv1 = sext i8 %2 to i32
  %cmp2 = icmp ne i32 %conv1, 32
  %idxprom = sext i32 %0 to i64
  %3 = getelementptr inbounds [100 x i8], ptr @a, i64 0, i64 %idxprom
  %4 = load i8, ptr %3, align 1, !tbaa !12
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv3, 32
  br i1 %cmp4, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %lor.lhs.false
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 1
  %5 = load i8, ptr %add.ptr, align 1, !tbaa !12, !invariant.load !13
  %conv5 = sext i8 %5 to i32
  %cmp6 = icmp ne i32 %conv5, 32
  br i1 %cmp6, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true, %for.body
  %call9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext %4)
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %land.lhs.true, %if.then
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !5
  %6 = load i32, ptr @i, align 4, !tbaa !10
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr @i, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef align 8 %p) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(100) @a, i64 noundef 100)
  call void @_Z2sfv()
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(100) @a)
  ret i32 0
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef nonnull %__s) local_unnamed_addr #3 comdat {
entry:
  %__c = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
  %0 = call i64 @llvm.objectsize.i64.p0(ptr %__s, i1 false, i1 true, i1 false)
  %cmp = icmp ult i64 %0, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %vtable = load ptr, ptr %__in, align 8, !tbaa !17, !invariant.load !13
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !13
  %add.ptr = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset
  %call = call noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr, i64 noundef 0) #11
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 4)
  br label %if.end38

if.else:                                          ; preds = %entry
  %cmp5 = icmp ne i64 %0, -1
  br i1 %cmp5, label %if.then6, label %if.else34

if.then6:                                         ; preds = %if.else
  %vtable7 = load ptr, ptr %__in, align 8, !tbaa !17, !invariant.load !13
  %vbase.offset.ptr8 = getelementptr i8, ptr %vtable7, i64 -24
  %vbase.offset9 = load i64, ptr %vbase.offset.ptr8, align 8, !invariant.load !13
  %add.ptr10 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset9
  %call11 = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr10) #11
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef %__s, i64 noundef %0)
  %call16 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10) #11
  br i1 %call16, label %land.lhs.true, label %if.end38

land.lhs.true:                                    ; preds = %if.then6
  %cmp17 = icmp sle i64 %call11, 0
  br i1 %cmp17, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp18 = icmp ult i64 %0, %call11
  br i1 %cmp18, label %if.then19, label %if.end38

if.then19:                                        ; preds = %lor.lhs.false, %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull align 4 captures(none) dereferenceable(4) %__c) #11
  %call24 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10) #11
  %call25 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24)
  store i32 %call25, ptr %__c, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull align 4 captures(none) dereferenceable(4) %ref.tmp) #11
  %call26 = call noundef i32 @_ZNSt11char_traitsIcE3eofEv() #11
  store i32 %call26, ptr %ref.tmp, align 4, !tbaa !10
  %call27 = call noundef zeroext i1 @_ZNSt11char_traitsIcE11eq_int_typeERKiS2_(ptr noundef nonnull align 4 dereferenceable(4) %__c, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref.tmp) #11
  %conv = zext i1 %call27 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then28, label %if.end

if.then28:                                        ; preds = %if.then19
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.then28, %if.then19
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c) #11
  br label %if.end38

if.else34:                                        ; preds = %if.else
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef %__s, i64 noundef 9223372036854775807)
  br label %if.end38

if.end38:                                         ; preds = %if.else34, %if.end, %lor.lhs.false, %if.then6, %do.end
  ret ptr %__in
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) local_unnamed_addr #5 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !19, !invariant.load !13
  ret i64 %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %this, i64 noundef %__wide) local_unnamed_addr #5 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !19, !invariant.load !13
  store i64 %__wide, ptr %_M_width, align 8, !tbaa !19
  ret i64 %0
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #0 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt11char_traitsIcE11eq_int_typeERKiS2_(ptr noundef nonnull align 4 dereferenceable(4) %__c1, ptr noundef nonnull align 4 dereferenceable(4) %__c2) local_unnamed_addr #5 comdat align 2 {
entry:
  %0 = load i32, ptr %__c1, align 4, !tbaa !10, !invariant.load !13
  %1 = load i32, ptr %__c2, align 4, !tbaa !10, !invariant.load !13
  %cmp = icmp eq i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt11char_traitsIcE3eofEv() local_unnamed_addr #5 comdat align 2 {
entry:
  ret i32 -1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nofree nosync nounwind willreturn memory(read) }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 omnipotent char", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !9, i64 0}
!19 = !{!20, !21, i64 16}
!20 = !{!"_ZTSSt8ios_base", !21, i64 8, !21, i64 16, !22, i64 24, !23, i64 28, !23, i64 32, !24, i64 40, !25, i64 48, !8, i64 64, !11, i64 192, !26, i64 200, !27, i64 208}
!21 = !{!"long", !8, i64 0}
!22 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!23 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!24 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !7, i64 0}
!25 = !{!"_ZTSNSt8ios_base6_WordsE", !7, i64 0, !21, i64 8}
!26 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !7, i64 0}
!27 = !{!"_ZTSSt6locale", !28, i64 0}
!28 = !{!"p1 _ZTSNSt6locale5_ImplE", !7, i64 0}
