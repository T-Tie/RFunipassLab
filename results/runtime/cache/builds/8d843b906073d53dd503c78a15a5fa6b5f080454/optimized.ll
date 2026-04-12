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

@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit41:
  %a = alloca [1000 x i8], align 16
  %b = alloca [1000 x i8], align 16
  %w = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 1000, ptr noundef nonnull align 16 captures(none) dereferenceable(1000) %a) #11
  call void @llvm.lifetime.start.p0(i64 noundef 1000, ptr noundef nonnull align 16 captures(none) dereferenceable(1000) %b) #11
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %w) #11
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 8 %w)
  call void @outlined_ir_func_0(ptr nonnull %a)
  call void @outlined_ir_func_0(ptr nonnull %b)
  %call5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #12
  %conv = trunc i64 %call5 to i32
  %call7 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #12
  %conv8 = trunc i64 %call7 to i32
  %cmp.not = icmp eq i32 %conv, %conv8
  br i1 %cmp.not, label %for.cond.preheader, label %if.end75

for.cond.preheader:                               ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit41
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond50, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x i8], ptr %a, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  switch i8 %0, label %if.end75 [
    i8 65, label %land.lhs.true
    i8 67, label %land.lhs.true
    i8 71, label %land.lhs.true
    i8 84, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %for.body, %for.body, %for.body, %for.body
  %arrayidx28 = getelementptr inbounds nuw [1000 x i8], ptr %b, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx28, align 1, !tbaa !5
  switch i8 %1, label %if.end75 [
    i8 65, label %for.inc
    i8 71, label %for.inc
    i8 67, label %for.inc
    i8 84, label %for.inc
  ]

for.inc:                                          ; preds = %land.lhs.true, %land.lhs.true, %land.lhs.true, %land.lhs.true
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !8

for.cond50:                                       ; preds = %for.cond, %for.body52
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.body52 ], [ 0, %for.cond ]
  %count.0 = phi i32 [ %spec.select, %for.body52 ], [ 0, %for.cond ]
  %exitcond48.not = icmp eq i64 %indvars.iv44, %wide.trip.count
  br i1 %exitcond48.not, label %for.end65, label %for.body52

for.body52:                                       ; preds = %for.cond50
  %arrayidx54 = getelementptr inbounds nuw [1000 x i8], ptr %a, i64 0, i64 %indvars.iv44
  %2 = load i8, ptr %arrayidx54, align 1, !tbaa !5
  %arrayidx57 = getelementptr inbounds nuw [1000 x i8], ptr %b, i64 0, i64 %indvars.iv44
  %3 = load i8, ptr %arrayidx57, align 1, !tbaa !5
  %cmp59 = icmp eq i8 %2, %3
  %inc61 = zext i1 %cmp59 to i32
  %spec.select = add nuw nsw i32 %count.0, %inc61
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond50, !llvm.loop !11

for.end65:                                        ; preds = %for.cond50
  %conv66 = uitofp nneg i32 %count.0 to double
  %conv67 = sitofp i32 %conv to double
  %div = fdiv double %conv66, %conv67
  %4 = load double, ptr %w, align 8, !tbaa !12
  %cmp68 = fcmp ult double %div, %4
  br i1 %cmp68, label %if.else71, label %if.end75

if.else71:                                        ; preds = %for.end65
  br label %if.end75

if.end75:                                         ; preds = %land.lhs.true, %for.body, %for.end65, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit41, %if.else71
  %.str.3.sink = phi ptr [ @.str.3, %if.else71 ], [ @.str.1, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit41 ], [ @.str.2, %for.end65 ], [ @.str.1, %for.body ], [ @.str.1, %land.lhs.true ]
  %call72 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.3.sink) #13
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %w) #13
  call void @llvm.lifetime.end.p0(i64 noundef 1000, ptr noundef nonnull captures(none) %b) #13
  call void @llvm.lifetime.end.p0(i64 noundef 1000, ptr noundef nonnull captures(none) %a) #13
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #5

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #6 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal void @outlined_ir_func_0(ptr %0) #10 {
entry_to_outline:
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !14
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8, !invariant.load !16
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  %_M_width.i1.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %1 = load i64, ptr %_M_width.i1.i, align 8, !tbaa !17
  tail call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(1000) %0, i64 noundef 1000)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !14
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8, !invariant.load !16
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %call16.i = tail call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr15.i) #13
  %2 = add i64 %1, -1001
  %or.cond.i = icmp ult i64 %2, -1000
  %or.cond = select i1 %call16.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %if.then6.i10.exitStub

if.then19.i:                                      ; preds = %entry_to_outline
  %vtable20.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !14
  %vbase.offset.ptr21.i = getelementptr i8, ptr %vtable20.i, i64 -24
  %vbase.offset22.i = load i64, ptr %vbase.offset.ptr21.i, align 8, !invariant.load !16
  %add.ptr23.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset22.i
  %call24.i = tail call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr23.i) #13
  %call25.i = tail call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i)
  %cmp.i.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i.i to i64
  %expval.i = tail call i64 @llvm.expect.i64(i64 %conv.i, i64 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %if.then6.i10.exitStub, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  %vtable29.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !14
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable29.i, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8, !invariant.load !16
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  br label %if.then6.i10.exitStub

if.then6.i10.exitStub:                            ; preds = %if.then28.i, %if.then19.i, %entry_to_outline
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind willreturn }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !7, i64 0}
!16 = !{}
!17 = !{!18, !19, i64 16}
!18 = !{!"_ZTSSt8ios_base", !19, i64 8, !19, i64 16, !20, i64 24, !21, i64 28, !21, i64 32, !22, i64 40, !24, i64 48, !6, i64 64, !25, i64 192, !26, i64 200, !27, i64 208}
!19 = !{!"long", !6, i64 0}
!20 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!21 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!22 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !23, i64 0}
!23 = !{!"any pointer", !6, i64 0}
!24 = !{!"_ZTSNSt8ios_base6_WordsE", !23, i64 0, !19, i64 8}
!25 = !{!"int", !6, i64 0}
!26 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !23, i64 0}
!27 = !{!"_ZTSSt6locale", !28, i64 0}
!28 = !{!"p1 _ZTSNSt6locale5_ImplE", !23, i64 0}
