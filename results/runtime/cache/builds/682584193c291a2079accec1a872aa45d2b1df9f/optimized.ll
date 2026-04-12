; ModuleID = '<stdin>'
source_filename = "/tmp/tmpl5k0c8nc.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZNSt11char_traitsIcE11to_int_typeERKc = comdat any

@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %a = alloca [1000 x i8], align 16
  %b = alloca [1000 x i8], align 16
  %w = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 1000, ptr noundef nonnull align 16 dereferenceable(1000) %a) #9
  call void @llvm.lifetime.start.p0(i64 noundef 1000, ptr noundef nonnull align 16 dereferenceable(1000) %b) #9
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %w) #9
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 8 %w)
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8, !invariant.load !8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(1000) %a, i64 noundef 1000)
  %call16.i = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #10
  br i1 %call16.i, label %land.lhs.true.i, label %if.then6.i8

land.lhs.true.i:                                  ; preds = %entry
  %_M_width.i1.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i1.i, align 8, !tbaa !9, !invariant.load !8
  %1 = add i64 %0, -1001
  %or.cond.i = icmp ult i64 %1, -1000
  br i1 %or.cond.i, label %if.then19.i, label %if.then6.i8

if.then19.i:                                      ; preds = %land.lhs.true.i
  %call24.i = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #10
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i)
  %cmp.i.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 noundef %conv.i, i64 noundef 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %if.then6.i8, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %if.then6.i8

if.then6.i8:                                      ; preds = %if.then28.i, %if.then19.i, %land.lhs.true.i, %entry
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(1000) %b, i64 noundef 1000)
  %call16.i13 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #10
  br i1 %call16.i13, label %land.lhs.true.i14, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit27

land.lhs.true.i14:                                ; preds = %if.then6.i8
  %_M_width.i1.i15 = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %2 = load i64, ptr %_M_width.i1.i15, align 8, !tbaa !9, !invariant.load !8
  %3 = add i64 %2, -1001
  %or.cond.i18 = icmp ult i64 %3, -1000
  br i1 %or.cond.i18, label %if.then19.i19, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit27

if.then19.i19:                                    ; preds = %land.lhs.true.i14
  %call24.i20 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #10
  %call25.i21 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i20)
  %cmp.i.i22 = icmp eq i32 %call25.i21, -1
  %conv.i23 = zext i1 %cmp.i.i22 to i64
  %expval.i24 = call i64 @llvm.expect.i64(i64 noundef %conv.i23, i64 noundef 1)
  %tobool.not.i25 = icmp eq i64 %expval.i24, 0
  br i1 %tobool.not.i25, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit27, label %if.then28.i26

if.then28.i26:                                    ; preds = %if.then19.i19
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit27

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit27: ; preds = %if.then6.i8, %land.lhs.true.i14, %if.then19.i19, %if.then28.i26
  %call5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #11
  %conv = trunc i64 %call5 to i32
  %call7 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #11
  %conv8 = trunc i64 %call7 to i32
  %cmp.not = icmp eq i32 %conv, %conv8
  br i1 %cmp.not, label %for.cond.preheader, label %if.end75

for.cond.preheader:                               ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit27
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond50, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x i8], ptr %a, i64 0, i64 %indvars.iv
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !22, !invariant.load !8
  switch i8 %4, label %if.end75 [
    i8 65, label %land.lhs.true
    i8 67, label %land.lhs.true
    i8 71, label %land.lhs.true
    i8 84, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %for.body, %for.body, %for.body, %for.body
  %arrayidx28 = getelementptr inbounds nuw [1000 x i8], ptr %b, i64 0, i64 %indvars.iv
  %5 = load i8, ptr %arrayidx28, align 1, !tbaa !22, !invariant.load !8
  switch i8 %5, label %if.end75 [
    i8 65, label %for.inc
    i8 71, label %for.inc
    i8 67, label %for.inc
    i8 84, label %for.inc
  ]

for.inc:                                          ; preds = %land.lhs.true, %land.lhs.true, %land.lhs.true, %land.lhs.true
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !23

for.cond50:                                       ; preds = %for.cond, %for.body52
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.body52 ], [ 0, %for.cond ]
  %count.0 = phi i32 [ %spec.select, %for.body52 ], [ 0, %for.cond ]
  %exitcond51.not = icmp eq i64 %indvars.iv47, %wide.trip.count
  br i1 %exitcond51.not, label %for.end65, label %for.body52

for.body52:                                       ; preds = %for.cond50
  %arrayidx54 = getelementptr inbounds nuw [1000 x i8], ptr %a, i64 0, i64 %indvars.iv47
  %6 = load i8, ptr %arrayidx54, align 1, !tbaa !22, !invariant.load !8
  %arrayidx57 = getelementptr inbounds nuw [1000 x i8], ptr %b, i64 0, i64 %indvars.iv47
  %7 = load i8, ptr %arrayidx57, align 1, !tbaa !22, !invariant.load !8
  %cmp59 = icmp eq i8 %6, %7
  %inc61 = zext i1 %cmp59 to i32
  %spec.select = add nuw nsw i32 %count.0, %inc61
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond50, !llvm.loop !26

for.end65:                                        ; preds = %for.cond50
  %conv66 = uitofp nneg i32 %count.0 to double
  %conv67 = sitofp i32 %conv to double
  %div = fdiv double %conv66, %conv67
  %8 = load double, ptr %w, align 8, !tbaa !27
  %cmp68 = fcmp ult double %div, %8
  %.str.3..str.2 = select i1 %cmp68, ptr @.str.3, ptr @.str.2
  br label %if.end75

if.end75:                                         ; preds = %for.end65, %for.body, %land.lhs.true, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit27
  %.str.1.sink = phi ptr [ @.str.1, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit27 ], [ @.str.1, %land.lhs.true ], [ @.str.1, %for.body ], [ %.str.3..str.2, %for.end65 ]
  %call47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.1.sink)
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %w) #10
  call void @llvm.lifetime.end.p0(i64 noundef 1000, ptr noundef nonnull %b) #10
  call void @llvm.lifetime.end.p0(i64 noundef 1000, ptr noundef nonnull %a) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #5 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264)) #6 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264)) #6 align 2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) #5 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #8 comdat {
entry:
  %or = or i32 %__b, %__a
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
declare noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264)) #6 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE4gptrEv(ptr noundef nonnull align 8 dereferenceable(64)) #6 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE5egptrEv(ptr noundef nonnull align 8 dereferenceable(64)) #6 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt11char_traitsIcE11to_int_typeERKc(ptr noundef nonnull align 1 dereferenceable(1) %__c) #6 comdat align 2 {
entry:
  %0 = load i8, ptr %__c, align 1, !tbaa !22, !invariant.load !8
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{}
!9 = !{!10, !11, i64 16}
!10 = !{!"_ZTSSt8ios_base", !11, i64 8, !11, i64 16, !13, i64 24, !14, i64 28, !14, i64 32, !15, i64 40, !17, i64 48, !12, i64 64, !18, i64 192, !19, i64 200, !20, i64 208}
!11 = !{!"long", !12, i64 0}
!12 = !{!"omnipotent char", !7, i64 0}
!13 = !{!"_ZTSSt13_Ios_Fmtflags", !12, i64 0}
!14 = !{!"_ZTSSt12_Ios_Iostate", !12, i64 0}
!15 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !11, i64 8}
!18 = !{!"int", !12, i64 0}
!19 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!20 = !{!"_ZTSSt6locale", !21, i64 0}
!21 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!22 = !{!12, !12, i64 0}
!23 = distinct !{!23, !24, !25}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !24, !25}
!27 = !{!28, !28, i64 0}
!28 = !{!"double", !12, i64 0}
