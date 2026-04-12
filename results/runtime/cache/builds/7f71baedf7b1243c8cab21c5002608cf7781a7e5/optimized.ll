; ModuleID = '<stdin>'
source_filename = "/tmp/tmpsxr46x5q.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

$_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_ = comdat any

$_ZNSt8ios_base5widthEl = comdat any

$_ZNKSt8ios_base5widthEv = comdat any

$_ZNSt11char_traitsIcE11eq_int_typeERKiS2_ = comdat any

$_ZNSt11char_traitsIcE3eofEv = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %s = alloca [41 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %count.0 = phi i32 [ undef, %entry ], [ %conv28, %for.inc ]
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 41, ptr noundef nonnull align 16 captures(none) dereferenceable(41) %s) #10
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(41) %s)
  %cmp2 = icmp eq i32 %i.0, 1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %s)
  %call6 = call i64 @strlen(ptr noundef %s) #11
  br label %for.inc

if.else:                                          ; preds = %for.body
  %conv7 = sext i32 %count.0 to i64
  %call9 = call i64 @strlen(ptr noundef %s) #11
  %add = add i64 %call9, 1
  %add10 = add i64 %add, %conv7
  %cmp11 = icmp ule i64 %add10, 80
  br i1 %cmp11, label %if.then12, label %if.else22

if.then12:                                        ; preds = %if.else
  %call13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call13, ptr noundef %s)
  %call17 = call i64 @strlen(ptr noundef %s) #11
  %add18 = add i64 %call17, 1
  %add20 = add i64 %add18, %conv7
  br label %for.inc

if.else22:                                        ; preds = %if.else
  %call23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %call25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call23, ptr noundef %s)
  %call27 = call i64 @strlen(ptr noundef %s) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else22, %if.then12
  %call27.sink = phi i64 [ %call27, %if.else22 ], [ %add20, %if.then12 ], [ %call6, %if.then ]
  %conv28 = trunc i64 %call27.sink to i32
  call void @llvm.lifetime.end.p0(i64 noundef 41, ptr noundef captures(none) %s) #10
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #10
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef nonnull %__s) local_unnamed_addr #3 comdat {
entry:
  %__c = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
  %0 = call i64 @llvm.objectsize.i64.p0(ptr %__s, i1 false, i1 true, i1 false)
  %cmp = icmp ult i64 %0, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %vtable = load ptr, ptr %__in, align 8, !tbaa !12
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !14
  %add.ptr = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset
  %call = call noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr, i64 noundef 0) #10
  %vtable1 = load ptr, ptr %__in, align 8, !tbaa !12
  %vbase.offset.ptr2 = getelementptr i8, ptr %vtable1, i64 -24
  %vbase.offset3 = load i64, ptr %vbase.offset.ptr2, align 8, !invariant.load !14
  %add.ptr4 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset3
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr4, i32 noundef 4)
  br label %if.end38

if.else:                                          ; preds = %entry
  %cmp5 = icmp ne i64 %0, -1
  br i1 %cmp5, label %if.then6, label %if.else34

if.then6:                                         ; preds = %if.else
  %vtable7 = load ptr, ptr %__in, align 8, !tbaa !12
  %vbase.offset.ptr8 = getelementptr i8, ptr %vtable7, i64 -24
  %vbase.offset9 = load i64, ptr %vbase.offset.ptr8, align 8, !invariant.load !14
  %add.ptr10 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset9
  %call11 = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr10) #10
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef %__s, i64 noundef %0)
  %vtable12 = load ptr, ptr %__in, align 8, !tbaa !12
  %vbase.offset.ptr13 = getelementptr i8, ptr %vtable12, i64 -24
  %vbase.offset14 = load i64, ptr %vbase.offset.ptr13, align 8, !invariant.load !14
  %add.ptr15 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset14
  %call16 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr15) #10
  br i1 %call16, label %land.lhs.true, label %if.end38

land.lhs.true:                                    ; preds = %if.then6
  %cmp17 = icmp sle i64 %call11, 0
  br i1 %cmp17, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp18 = icmp ult i64 %0, %call11
  br i1 %cmp18, label %if.then19, label %if.end38

if.then19:                                        ; preds = %lor.lhs.false, %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull align 4 captures(none) dereferenceable(4) %__c) #10
  %vtable20 = load ptr, ptr %__in, align 8, !tbaa !12
  %vbase.offset.ptr21 = getelementptr i8, ptr %vtable20, i64 -24
  %vbase.offset22 = load i64, ptr %vbase.offset.ptr21, align 8, !invariant.load !14
  %add.ptr23 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset22
  %call24 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr23) #10
  %call25 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24)
  store i32 %call25, ptr %__c, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull align 4 captures(none) dereferenceable(4) %ref.tmp) #10
  %call26 = call noundef i32 @_ZNSt11char_traitsIcE3eofEv() #10
  store i32 %call26, ptr %ref.tmp, align 4, !tbaa !5
  %call27 = call noundef zeroext i1 @_ZNSt11char_traitsIcE11eq_int_typeERKiS2_(ptr noundef nonnull align 4 dereferenceable(4) %__c, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref.tmp) #10
  %conv = zext i1 %call27 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then28, label %if.end

if.then28:                                        ; preds = %if.then19
  %vtable29 = load ptr, ptr %__in, align 8, !tbaa !12
  %vbase.offset.ptr30 = getelementptr i8, ptr %vtable29, i64 -24
  %vbase.offset31 = load i64, ptr %vbase.offset.ptr30, align 8, !invariant.load !14
  %add.ptr32 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset31
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.then28, %if.then19
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c) #10
  br label %if.end38

if.else34:                                        ; preds = %if.else
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef %__s, i64 noundef 9223372036854775807)
  br label %if.end38

if.end38:                                         ; preds = %if.else34, %if.end, %lor.lhs.false, %if.then6, %do.end
  ret ptr %__in
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %this, i64 noundef %__wide) local_unnamed_addr #7 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !15
  store i64 %__wide, ptr %_M_width, align 8, !tbaa !15
  ret i64 %0
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) local_unnamed_addr #7 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !15
  ret i64 %0
}

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt11char_traitsIcE11eq_int_typeERKiS2_(ptr noundef nonnull align 4 dereferenceable(4) %__c1, ptr noundef nonnull align 4 dereferenceable(4) %__c2) local_unnamed_addr #7 comdat align 2 {
entry:
  %0 = load i32, ptr %__c1, align 4, !tbaa !5
  %1 = load i32, ptr %__c2, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt11char_traitsIcE3eofEv() local_unnamed_addr #7 comdat align 2 {
entry:
  ret i32 -1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nofree nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !8, i64 0}
!14 = !{}
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
