; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4tdplyf5.cpp"
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
  %k = alloca i32, align 4
  %a = alloca [26 x i32], align 16
  %r = alloca [26 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k) #6
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %r) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %k)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %a, i8 0, i64 104, i1 false), !tbaa !5
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next, %vector.body ]
  %0 = getelementptr inbounds nuw [26 x i32], ptr %r, i64 0, i64 %index
  store <4 x i32> splat (i32 1), ptr %0, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %1 = icmp eq i64 %index.next, 24
  br i1 %1, label %for.body5, label %vector.body, !llvm.loop !9

for.cond12.preheader:                             ; preds = %for.body5
  %2 = load i32, ptr %k, align 4, !tbaa !5
  %cmp1325 = icmp sgt i32 %2, 0
  br i1 %cmp1325, label %for.body15, label %for.cond.cleanup59

for.body5:                                        ; preds = %vector.body, %for.body5
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 24, %vector.body ]
  %arrayidx7 = getelementptr inbounds nuw [26 x i32], ptr %r, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx7, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 26
  br i1 %exitcond.not, label %for.cond12.preheader, label %for.body5, !llvm.loop !14

for.cond23.preheader:                             ; preds = %for.body15
  %cmp2428 = icmp sgt i32 %3, 0
  br i1 %cmp2428, label %for.body26.preheader, label %for.cond.cleanup59

for.body26.preheader:                             ; preds = %for.cond23.preheader
  %wide.trip.count47 = zext nneg i32 %3 to i64
  br label %for.body26

for.body15:                                       ; preds = %for.cond12.preheader, %for.body15
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.body15 ], [ 0, %for.cond12.preheader ]
  %arrayidx17 = getelementptr inbounds nuw [26 x i32], ptr %a, i64 0, i64 %indvars.iv37
  %call18 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx17)
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %3 = load i32, ptr %k, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp13 = icmp slt i64 %indvars.iv.next38, %4
  br i1 %cmp13, label %for.body15, label %for.cond23.preheader, !llvm.loop !15

for.body60.preheader:                             ; preds = %for.inc53
  %wide.trip.count = zext nneg i32 %3 to i64
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %for.body60.preheader66, label %vector.ph60

vector.ph60:                                      ; preds = %for.body60.preheader
  %n.vec = and i64 %wide.trip.count47, 2147483644
  br label %vector.body61

vector.body61:                                    ; preds = %vector.body61, %vector.ph60
  %index62 = phi i64 [ 0, %vector.ph60 ], [ %index.next63, %vector.body61 ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph60 ], [ %6, %vector.body61 ]
  %5 = getelementptr inbounds nuw [26 x i32], ptr %r, i64 0, i64 %index62
  %wide.load = load <4 x i32>, ptr %5, align 16, !tbaa !5
  %6 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi)
  %index.next63 = add nuw i64 %index62, 4
  %7 = icmp eq i64 %index.next63, %n.vec
  br i1 %7, label %middle.block64, label %vector.body61, !llvm.loop !16

middle.block64:                                   ; preds = %vector.body61
  %8 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %6)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count47
  br i1 %cmp.n, label %for.cond.cleanup59, label %for.body60.preheader66

for.body60.preheader66:                           ; preds = %for.body60.preheader, %middle.block64
  %indvars.iv49.ph = phi i64 [ 0, %for.body60.preheader ], [ %n.vec, %middle.block64 ]
  %s.031.ph = phi i32 [ 0, %for.body60.preheader ], [ %8, %middle.block64 ]
  br label %for.body60

for.body26:                                       ; preds = %for.body26.preheader, %for.inc53
  %indvars.iv44 = phi i64 [ 0, %for.body26.preheader ], [ %indvars.iv.next45, %for.inc53 ]
  %cmp27 = icmp eq i64 %indvars.iv44, 0
  br i1 %cmp27, label %if.then, label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.body26
  %arrayidx37 = getelementptr inbounds nuw [26 x i32], ptr %a, i64 0, i64 %indvars.iv44
  %9 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %arrayidx42 = getelementptr inbounds nuw [26 x i32], ptr %r, i64 0, i64 %indvars.iv44
  br label %for.body33

if.then:                                          ; preds = %for.body26
  store i32 1, ptr %r, align 16, !tbaa !5
  br label %for.inc53

for.body33:                                       ; preds = %for.cond30.preheader, %for.inc49
  %indvars.iv40 = phi i64 [ 0, %for.cond30.preheader ], [ %indvars.iv.next41, %for.inc49 ]
  %arrayidx35 = getelementptr inbounds nuw [26 x i32], ptr %a, i64 0, i64 %indvars.iv40
  %10 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %cmp38.not = icmp slt i32 %10, %9
  br i1 %cmp38.not, label %for.inc49, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body33
  %arrayidx40 = getelementptr inbounds nuw [26 x i32], ptr %r, i64 0, i64 %indvars.iv40
  %11 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %12 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %cmp43.not = icmp slt i32 %11, %12
  br i1 %cmp43.not, label %for.inc49, label %if.then44

if.then44:                                        ; preds = %land.lhs.true
  %add = add nsw i32 %11, 1
  store i32 %add, ptr %arrayidx42, align 4, !tbaa !5
  br label %for.inc49

for.inc49:                                        ; preds = %for.body33, %land.lhs.true, %if.then44
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond43.not = icmp eq i64 %indvars.iv.next41, %indvars.iv44
  br i1 %exitcond43.not, label %for.inc53, label %for.body33, !llvm.loop !17

for.inc53:                                        ; preds = %for.inc49, %if.then
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond48.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count47
  br i1 %exitcond48.not, label %for.body60.preheader, label %for.body26, !llvm.loop !18

for.cond.cleanup59:                               ; preds = %for.body60, %middle.block64, %for.cond12.preheader, %for.cond23.preheader
  %s.0.lcssa = phi i32 [ 0, %for.cond23.preheader ], [ 0, %for.cond12.preheader ], [ %8, %middle.block64 ], [ %spec.select, %for.body60 ]
  %call71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %s.0.lcssa)
  %vtable.i = load ptr, ptr %call71, align 8, !tbaa !19
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call71, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %13 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !21
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.cond.cleanup59
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.cond.cleanup59
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 56
  %14 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !39
  %tobool.not.i1.i.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 67
  %15 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !45
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %13)
  %vtable.i.i.i = load ptr, ptr %13, align 8, !tbaa !19
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %16 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %16(ptr noundef nonnull align 8 dereferenceable(570) %13, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %15, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call71, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %r) #6
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k) #6
  ret i32 0

for.body60:                                       ; preds = %for.body60.preheader66, %for.body60
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.body60 ], [ %indvars.iv49.ph, %for.body60.preheader66 ]
  %s.031 = phi i32 [ %spec.select, %for.body60 ], [ %s.031.ph, %for.body60.preheader66 ]
  %arrayidx62 = getelementptr inbounds nuw [26 x i32], ptr %r, i64 0, i64 %indvars.iv49
  %17 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %17, i32 %s.031)
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %exitcond52.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count
  br i1 %exitcond52.not, label %for.cond.cleanup59, label %for.body60, !llvm.loop !46
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11, !12, !13}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = !{!20, !20, i64 0}
!20 = !{!"vtable pointer", !8, i64 0}
!21 = !{!22, !36, i64 240}
!22 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !23, i64 0, !33, i64 216, !7, i64 224, !34, i64 225, !35, i64 232, !36, i64 240, !37, i64 248, !38, i64 256}
!23 = !{!"_ZTSSt8ios_base", !24, i64 8, !24, i64 16, !25, i64 24, !26, i64 28, !26, i64 32, !27, i64 40, !29, i64 48, !7, i64 64, !6, i64 192, !30, i64 200, !31, i64 208}
!24 = !{!"long", !7, i64 0}
!25 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!26 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!27 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !28, i64 0}
!28 = !{!"any pointer", !7, i64 0}
!29 = !{!"_ZTSNSt8ios_base6_WordsE", !28, i64 0, !24, i64 8}
!30 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !28, i64 0}
!31 = !{!"_ZTSSt6locale", !32, i64 0}
!32 = !{!"p1 _ZTSNSt6locale5_ImplE", !28, i64 0}
!33 = !{!"p1 _ZTSSo", !28, i64 0}
!34 = !{!"bool", !7, i64 0}
!35 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !28, i64 0}
!36 = !{!"p1 _ZTSSt5ctypeIcE", !28, i64 0}
!37 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !28, i64 0}
!38 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !28, i64 0}
!39 = !{!40, !7, i64 56}
!40 = !{!"_ZTSSt5ctypeIcE", !41, i64 0, !42, i64 16, !34, i64 24, !43, i64 32, !43, i64 40, !44, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!41 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!42 = !{!"p1 _ZTS15__locale_struct", !28, i64 0}
!43 = !{!"p1 int", !28, i64 0}
!44 = !{!"p1 short", !28, i64 0}
!45 = !{!7, !7, i64 0}
!46 = distinct !{!46, !10, !11, !12}
