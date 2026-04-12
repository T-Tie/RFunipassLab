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
entry:
  %a = alloca [1000 x i8], align 16
  %b = alloca [1000 x i8], align 16
  %w = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 1000, ptr noundef nonnull align 16 captures(none) dereferenceable(1000) %a) #9
  call void @llvm.lifetime.start.p0(i64 noundef 1000, ptr noundef nonnull align 16 captures(none) dereferenceable(1000) %b) #9
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %w) #9
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 8 %w)
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8, !invariant.load !8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(1000) %a, i64 noundef 1000)
  %call16.i = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #10
  br i1 %call16.i, label %land.lhs.true.i, label %if.then6.i10

land.lhs.true.i:                                  ; preds = %entry
  %_M_width.i5.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i5.i, align 8, !tbaa !9, !invariant.load !8
  %1 = add i64 %0, -1001
  %or.cond.i = icmp ult i64 %1, -1000
  br i1 %or.cond.i, label %if.then19.i, label %if.then6.i10

if.then19.i:                                      ; preds = %land.lhs.true.i
  %call24.i = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #10
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i)
  %cmp.i.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 noundef %conv.i, i64 noundef 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %if.then6.i10, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %if.then6.i10

if.then6.i10:                                     ; preds = %if.then28.i, %if.then19.i, %land.lhs.true.i, %entry
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(1000) %b, i64 noundef 1000)
  %call16.i15 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #10
  br i1 %call16.i15, label %land.lhs.true.i16, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit29

land.lhs.true.i16:                                ; preds = %if.then6.i10
  %_M_width.i5.i17 = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %2 = load i64, ptr %_M_width.i5.i17, align 8, !tbaa !9, !invariant.load !8
  %3 = add i64 %2, -1001
  %or.cond.i20 = icmp ult i64 %3, -1000
  br i1 %or.cond.i20, label %if.then19.i21, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit29

if.then19.i21:                                    ; preds = %land.lhs.true.i16
  %call24.i22 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #10
  %call25.i23 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i22)
  %cmp.i.i24 = icmp eq i32 %call25.i23, -1
  %conv.i25 = zext i1 %cmp.i.i24 to i64
  %expval.i26 = call i64 @llvm.expect.i64(i64 noundef %conv.i25, i64 noundef 1)
  %tobool.not.i27 = icmp eq i64 %expval.i26, 0
  br i1 %tobool.not.i27, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit29, label %if.then28.i28

if.then28.i28:                                    ; preds = %if.then19.i21
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit29

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit29: ; preds = %if.then6.i10, %land.lhs.true.i16, %if.then19.i21, %if.then28.i28
  %call5 = call i64 @strlen(ptr noundef nonnull readonly captures(none) dereferenceable(1) %a) #11
  %conv = trunc i64 %call5 to i32
  %call7 = call i64 @strlen(ptr noundef nonnull readonly captures(none) dereferenceable(1) %b) #11
  %conv8 = trunc i64 %call7 to i32
  %cmp.not = icmp eq i32 %conv, %conv8
  br i1 %cmp.not, label %for.cond.preheader, label %if.end75

for.cond.preheader:                               ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit29
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %if.end
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond50, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x i8], ptr %a, i64 0, i64 %indvars.iv
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !22, !invariant.load !8
  %Pivot63 = icmp slt i8 %4, 71
  br i1 %Pivot63, label %NodeBlock, label %NodeBlock60

NodeBlock60:                                      ; preds = %for.body
  %Pivot61 = icmp samesign ult i8 %4, 84
  br i1 %Pivot61, label %LeafBlock56, label %LeafBlock58

LeafBlock58:                                      ; preds = %NodeBlock60
  %SwitchLeaf59 = icmp eq i8 %4, 84
  br i1 %SwitchLeaf59, label %land.lhs.true, label %if.end75

LeafBlock56:                                      ; preds = %NodeBlock60
  %SwitchLeaf57 = icmp eq i8 %4, 71
  br i1 %SwitchLeaf57, label %land.lhs.true, label %if.end75

NodeBlock:                                        ; preds = %for.body
  %Pivot = icmp slt i8 %4, 67
  br i1 %Pivot, label %LeafBlock, label %LeafBlock54

LeafBlock54:                                      ; preds = %NodeBlock
  %SwitchLeaf55 = icmp eq i8 %4, 67
  br i1 %SwitchLeaf55, label %land.lhs.true, label %if.end75

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i8 %4, 65
  br i1 %SwitchLeaf, label %land.lhs.true, label %if.end75

land.lhs.true:                                    ; preds = %LeafBlock58, %LeafBlock56, %LeafBlock54, %LeafBlock
  %arrayidx28 = getelementptr inbounds nuw [1000 x i8], ptr %b, i64 0, i64 %indvars.iv
  %5 = load i8, ptr %arrayidx28, align 1, !tbaa !22, !invariant.load !8
  %Pivot77 = icmp slt i8 %5, 71
  br i1 %Pivot77, label %NodeBlock68, label %NodeBlock74

NodeBlock74:                                      ; preds = %land.lhs.true
  %Pivot75 = icmp samesign ult i8 %5, 84
  br i1 %Pivot75, label %LeafBlock70, label %LeafBlock72

LeafBlock72:                                      ; preds = %NodeBlock74
  %SwitchLeaf73 = icmp eq i8 %5, 84
  br i1 %SwitchLeaf73, label %if.end, label %if.end75

LeafBlock70:                                      ; preds = %NodeBlock74
  %SwitchLeaf71 = icmp eq i8 %5, 71
  br i1 %SwitchLeaf71, label %if.end, label %if.end75

NodeBlock68:                                      ; preds = %land.lhs.true
  %Pivot69 = icmp slt i8 %5, 67
  br i1 %Pivot69, label %LeafBlock64, label %LeafBlock66

LeafBlock66:                                      ; preds = %NodeBlock68
  %SwitchLeaf67 = icmp eq i8 %5, 67
  br i1 %SwitchLeaf67, label %if.end, label %if.end75

LeafBlock64:                                      ; preds = %NodeBlock68
  %SwitchLeaf65 = icmp eq i8 %5, 65
  br i1 %SwitchLeaf65, label %if.end, label %if.end75

if.end:                                           ; preds = %LeafBlock72, %LeafBlock70, %LeafBlock66, %LeafBlock64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !23

for.cond50:                                       ; preds = %for.cond, %for.body52
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.body52 ], [ 0, %for.cond ]
  %count.0 = phi i32 [ %spec.select, %for.body52 ], [ 0, %for.cond ]
  %exitcond53.not = icmp eq i64 %indvars.iv49, %wide.trip.count
  br i1 %exitcond53.not, label %for.end65, label %for.body52

for.body52:                                       ; preds = %for.cond50
  %arrayidx54 = getelementptr inbounds nuw [1000 x i8], ptr %a, i64 0, i64 %indvars.iv49
  %6 = load i8, ptr %arrayidx54, align 1, !tbaa !22, !invariant.load !8
  %arrayidx57 = getelementptr inbounds nuw [1000 x i8], ptr %b, i64 0, i64 %indvars.iv49
  %7 = load i8, ptr %arrayidx57, align 1, !tbaa !22, !invariant.load !8
  %cmp59 = icmp eq i8 %6, %7
  %inc61 = zext i1 %cmp59 to i32
  %spec.select = add nuw nsw i32 %count.0, %inc61
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond50, !llvm.loop !26

for.end65:                                        ; preds = %for.cond50
  %conv66 = uitofp nneg i32 %count.0 to double
  %conv67 = sitofp i32 %conv to double
  %div = fdiv double %conv66, %conv67
  %8 = load double, ptr %w, align 8, !tbaa !27
  %cmp68 = fcmp ult double %div, %8
  %.str.3..str.2 = select i1 %cmp68, ptr @.str.3, ptr @.str.2
  br label %if.end75

if.end75:                                         ; preds = %LeafBlock72, %LeafBlock70, %LeafBlock66, %LeafBlock64, %LeafBlock58, %LeafBlock56, %LeafBlock54, %LeafBlock, %for.end65, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit29
  %.str.1.sink = phi ptr [ @.str.1, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit29 ], [ %.str.3..str.2, %for.end65 ], [ @.str.1, %LeafBlock ], [ @.str.1, %LeafBlock54 ], [ @.str.1, %LeafBlock56 ], [ @.str.1, %LeafBlock58 ], [ @.str.1, %LeafBlock64 ], [ @.str.1, %LeafBlock66 ], [ @.str.1, %LeafBlock70 ], [ @.str.1, %LeafBlock72 ]
  %call47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.1.sink) #10
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %w) #10
  call void @llvm.lifetime.end.p0(i64 noundef 1000, ptr noundef nonnull captures(none) %b) #10
  call void @llvm.lifetime.end.p0(i64 noundef 1000, ptr noundef nonnull captures(none) %a) #10
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

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
