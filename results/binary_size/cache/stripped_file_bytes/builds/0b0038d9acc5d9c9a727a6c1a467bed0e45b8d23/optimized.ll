; ModuleID = '<stdin>'
source_filename = "/tmp/tmplnjml7_z.cpp"
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
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %ch = alloca [500 x i8], align 16
  %record = alloca [250 x ptr], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 500, ptr noundef nonnull align 16 captures(none) dereferenceable(500) %ch) #9
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %record) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8, !invariant.load !8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(500) %ch, i64 noundef 500)
  %call16.i = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #10
  br i1 %call16.i, label %land.lhs.true.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

land.lhs.true.i:                                  ; preds = %entry
  %_M_width.i5.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i5.i, align 8, !tbaa !9, !invariant.load !8
  %1 = add i64 %0, -501
  %or.cond.i = icmp ult i64 %1, -500
  br i1 %or.cond.i, label %if.then19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.then19.i:                                      ; preds = %land.lhs.true.i
  %call24.i = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #10
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i)
  %cmp.i.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 noundef %conv.i, i64 noundef 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit: ; preds = %entry, %land.lhs.true.i, %if.then19.i, %if.then28.i
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %ch) #11
  %sext = shl i64 %call3, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr inbounds i8, ptr %ch, i64 %idx.ext
  %add.ptr6 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  %2 = load i32, ptr %n, align 4
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  %p.0 = phi ptr [ %ch, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit ], [ %add.ptr7, %for.inc42 ]
  %num.0 = phi i32 [ 1, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit ], [ %num.1, %for.inc42 ]
  %d.0 = phi i32 [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit ], [ %d.1, %for.inc42 ]
  %cmp = icmp ult ptr %p.0, %add.ptr6
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %p.0, i64 1
  br label %for.cond8

for.cond8:                                        ; preds = %for.end, %for.body
  %q.0 = phi ptr [ %add.ptr7, %for.body ], [ %incdec.ptr, %for.end ]
  %r.0 = phi i32 [ 1, %for.body ], [ %spec.select32, %for.end ]
  %cmp12 = icmp ult ptr %q.0, %add.ptr
  br i1 %cmp12, label %for.cond14, label %for.end30

for.cond14:                                       ; preds = %for.cond8, %for.body16
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body16 ], [ 0, %for.cond8 ]
  %k.0 = phi i32 [ %spec.select, %for.body16 ], [ 0, %for.cond8 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %q.0, i64 %indvars.iv
  %3 = load i8, ptr %add.ptr18, align 1, !tbaa !22, !invariant.load !8
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %p.0, i64 %indvars.iv
  %4 = load i8, ptr %add.ptr21, align 1, !tbaa !22, !invariant.load !8
  %cmp23 = icmp eq i8 %3, %4
  %inc = zext i1 %cmp23 to i32
  %spec.select = add nuw nsw i32 %k.0, %inc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond14

for.end:                                          ; preds = %for.cond14
  %cmp25 = icmp eq i32 %k.0, %2
  %inc27 = zext i1 %cmp25 to i32
  %spec.select32 = add nuw nsw i32 %r.0, %inc27
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %q.0, i64 1
  br label %for.cond8, !llvm.loop !23

for.end30:                                        ; preds = %for.cond8
  %cmp31 = icmp sgt i32 %r.0, %num.0
  br i1 %cmp31, label %if.then32, label %if.else

if.then32:                                        ; preds = %for.end30
  store ptr %p.0, ptr %record, align 16, !tbaa !26
  br label %for.inc42

if.else:                                          ; preds = %for.end30
  %cmp34 = icmp eq i32 %r.0, %num.0
  %cmp35 = icmp sgt i32 %num.0, 1
  %or.cond = and i1 %cmp35, %cmp34
  br i1 %or.cond, label %if.then36, label %for.inc42

if.then36:                                        ; preds = %if.else
  %idxprom37 = sext i32 %d.0 to i64
  %arrayidx38 = getelementptr inbounds [250 x ptr], ptr %record, i64 0, i64 %idxprom37
  store ptr %p.0, ptr %arrayidx38, align 8, !tbaa !26
  %inc39 = add nsw i32 %d.0, 1
  br label %for.inc42

for.inc42:                                        ; preds = %if.then32, %if.then36, %if.else
  %num.1 = phi i32 [ %r.0, %if.then32 ], [ %num.0, %if.then36 ], [ %num.0, %if.else ]
  %d.1 = phi i32 [ 1, %if.then32 ], [ %inc39, %if.then36 ], [ %d.0, %if.else ]
  br label %for.cond, !llvm.loop !28

for.end44:                                        ; preds = %for.cond
  %cmp45 = icmp eq i32 %num.0, 1
  br i1 %cmp45, label %if.then46, label %if.else49

if.then46:                                        ; preds = %for.end44
  %call47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  %call48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call47, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end70

if.else49:                                        ; preds = %for.end44
  %call50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %num.0)
  %call51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call50, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %smax41 = call i32 @llvm.smax.i32(i32 %d.0, i32 noundef 0)
  %wide.trip.count42 = zext nneg i32 %smax41 to i64
  br label %for.cond52

for.cond52:                                       ; preds = %for.end65, %if.else49
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.end65 ], [ 0, %if.else49 ]
  %exitcond43.not = icmp eq i64 %indvars.iv37, %wide.trip.count42
  br i1 %exitcond43.not, label %if.end70, label %for.cond55.preheader

for.cond55.preheader:                             ; preds = %for.cond52
  %arrayidx59 = getelementptr inbounds nuw [250 x ptr], ptr %record, i64 0, i64 %indvars.iv37
  br label %for.cond55

for.cond55:                                       ; preds = %for.cond55.preheader, %for.body57
  %indvars.iv34 = phi i64 [ 0, %for.cond55.preheader ], [ %indvars.iv.next35, %for.body57 ]
  %5 = load i32, ptr %n, align 4, !tbaa !29
  %6 = sext i32 %5 to i64
  %cmp56 = icmp slt i64 %indvars.iv34, %6
  br i1 %cmp56, label %for.body57, label %for.end65

for.body57:                                       ; preds = %for.cond55
  %7 = load ptr, ptr %arrayidx59, align 8, !tbaa !26
  %add.ptr61 = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv34
  %8 = load i8, ptr %add.ptr61, align 1, !tbaa !22, !invariant.load !8
  %call62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %8)
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond55

for.end65:                                        ; preds = %for.cond55
  %call66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond52

if.end70:                                         ; preds = %for.cond52, %if.then46
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #10
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %record) #10
  call void @llvm.lifetime.end.p0(i64 noundef 500, ptr noundef nonnull %ch) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind }
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
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 omnipotent char", !16, i64 0}
!28 = distinct !{!28, !24, !25}
!29 = !{!18, !18, i64 0}
