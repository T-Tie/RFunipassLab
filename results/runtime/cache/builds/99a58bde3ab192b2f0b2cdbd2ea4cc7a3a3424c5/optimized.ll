; ModuleID = '<stdin>'
source_filename = "/tmp/tmpp2vqv40i.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [500 x [41 x i8]], align 16
  %b = alloca [500 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %n) #10
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 noundef 20500, ptr noundef nonnull align 16 captures(none) dereferenceable(20500) %a) #11
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull %b) #11
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i) #11
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %j) #11
  br label %for.cond

for.cond:                                         ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond4

for.inc:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw [41 x i8], ptr %a, i64 %indvars.iv
  %2 = call i64 @llvm.objectsize.i64.p0(ptr nonnull %add.ptr, i1 noundef false, i1 noundef true, i1 noundef false)
  switch i64 %2, label %if.then6.i [
    i64 0, label %do.end.i
    i64 -1, label %if.else34.i
  ]

do.end.i:                                         ; preds = %for.inc
  %vtable.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !11
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset.i
  %_M_width.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 16
  store i64 0, ptr %_M_width.i.i, align 8, !tbaa !12
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i32 noundef 4)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.then6.i:                                       ; preds = %for.inc
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8, !invariant.load !11
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt3cin, i64 16), i64 %vbase.offset9.i
  %3 = load i64, ptr %gep, align 8, !tbaa !12
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %add.ptr, i64 noundef %2)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8, !invariant.load !11
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %call16.i = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr15.i) #11
  br i1 %call16.i, label %land.lhs.true.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

land.lhs.true.i:                                  ; preds = %if.then6.i
  %cmp17.i = icmp slt i64 %3, 1
  %cmp18.i = icmp ult i64 %2, %3
  %or.cond.i = or i1 %cmp17.i, %cmp18.i
  br i1 %or.cond.i, label %if.then19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.then19.i:                                      ; preds = %land.lhs.true.i
  %vtable20.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr21.i = getelementptr i8, ptr %vtable20.i, i64 -24
  %vbase.offset22.i = load i64, ptr %vbase.offset.ptr21.i, align 8, !invariant.load !11
  %add.ptr23.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset22.i
  %call24.i = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr23.i) #11
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i)
  %cmp.i.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 noundef %conv.i, i64 noundef 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  %vtable29.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable29.i, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8, !invariant.load !11
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.else34.i:                                      ; preds = %for.inc
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %add.ptr, i64 noundef 9223372036854775807)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit: ; preds = %do.end.i, %if.then6.i, %land.lhs.true.i, %if.then19.i, %if.then28.i, %if.else34.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !23

for.cond4:                                        ; preds = %for.cond4.preheader, %for.inc13
  %indvars.iv7 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next8, %for.inc13 ]
  %exitcond.not = icmp eq i64 %indvars.iv7, %wide.trip.count
  br i1 %exitcond.not, label %for.cond16, label %for.inc13

for.inc13:                                        ; preds = %for.cond4
  %add.ptr8 = getelementptr inbounds nuw [41 x i8], ptr %a, i64 %indvars.iv7
  %call10 = call i64 @strlen(ptr noundef nonnull captures(none) dereferenceable(1) %add.ptr8) #12
  %4 = trunc i64 %call10 to i32
  %conv = add i32 %4, 1
  %add.ptr12 = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv7
  store i32 %conv, ptr %add.ptr12, align 4, !tbaa !5
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond4, !llvm.loop !26

for.cond16:                                       ; preds = %for.cond4, %for.inc42
  %.pre14 = phi i32 [ %.pre, %for.inc42 ], [ %0, %for.cond4 ]
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.inc42 ], [ 0, %for.cond4 ]
  %sum.0 = phi i32 [ %sum.1, %for.inc42 ], [ 0, %for.cond4 ]
  %k.0 = phi i32 [ %k.1, %for.inc42 ], [ 0, %for.cond4 ]
  %5 = trunc nuw nsw i64 %indvars.iv11 to i32
  store i32 %5, ptr %i, align 4, !tbaa !5
  %6 = sext i32 %.pre14 to i64
  %cmp17 = icmp slt i64 %indvars.iv11, %6
  br i1 %cmp17, label %for.body18, label %for.end44

for.body18:                                       ; preds = %for.cond16
  %add.ptr20 = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv11
  %7 = load i32, ptr %add.ptr20, align 4, !tbaa !5
  %add21 = add nsw i32 %7, %sum.0
  %cmp22 = icmp sgt i32 %add21, 81
  br i1 %cmp22, label %if.then, label %for.inc42

if.then:                                          ; preds = %for.body18
  store i32 %k.0, ptr %j, align 4, !tbaa !5
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %i, ptr noundef nonnull align 16 dereferenceable(20500) %a)
  %.pre.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc42

for.inc42:                                        ; preds = %for.body18, %if.then
  %.pre = phi i32 [ %.pre.pre, %if.then ], [ %.pre14, %for.body18 ]
  %sum.1 = phi i32 [ %7, %if.then ], [ %add21, %for.body18 ]
  %k.1 = phi i32 [ %5, %if.then ], [ %k.0, %for.body18 ]
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond16, !llvm.loop !27

for.end44:                                        ; preds = %for.cond16
  store i32 %k.0, ptr %j, align 4, !tbaa !5
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %n, ptr noundef nonnull align 16 dereferenceable(20500) %a)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %j) #11
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %i) #11
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %b) #11
  call void @llvm.lifetime.end.p0(i64 noundef 20500, ptr noundef nonnull captures(none) %a) #11
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #11
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #6

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr noundef nonnull align 16 dereferenceable(20500) %2) unnamed_addr #9 {
if.then_to_outline:
  %.promoted = load i32, ptr %0, align 4, !tbaa !5
  %3 = sext i32 %.promoted to i64
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc31, %if.then_to_outline
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc31 ], [ %3, %if.then_to_outline ]
  %4 = load i32, ptr %1, align 4, !tbaa !5, !invariant.load !11
  %sub = add nsw i32 %4, -1
  %5 = sext i32 %sub to i64
  %cmp24 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp24, label %for.inc31, label %if.then_after_outline.exitStub

for.inc31:                                        ; preds = %for.cond23
  %add.ptr27 = getelementptr inbounds [41 x i8], ptr %2, i64 %indvars.iv
  %call29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %add.ptr27)
  %call30 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call29, i8 noundef signext 32)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %6 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %6, ptr %0, align 4, !tbaa !5
  br label %for.cond23, !llvm.loop !28

if.then_after_outline.exitStub:                   ; preds = %for.cond23
  %idx.ext34 = sext i32 %4 to i64
  %add.ptr35 = getelementptr inbounds [41 x i8], ptr %2, i64 %idx.ext34
  %add.ptr36 = getelementptr inbounds i8, ptr %add.ptr35, i64 -41
  %call38 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %add.ptr36)
  %call39 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call38, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{}
!12 = !{!13, !14, i64 16}
!13 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !15, i64 24, !16, i64 28, !16, i64 32, !17, i64 40, !19, i64 48, !7, i64 64, !6, i64 192, !20, i64 200, !21, i64 208}
!14 = !{!"long", !7, i64 0}
!15 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!16 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!17 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !14, i64 8}
!20 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!21 = !{!"_ZTSSt6locale", !22, i64 0}
!22 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!23 = distinct !{!23, !24, !25}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !24, !25}
!27 = distinct !{!27, !24, !25}
!28 = distinct !{!28, !24, !25}
