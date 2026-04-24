; ModuleID = '<stdin>'
source_filename = "/tmp/tmphp33jyau.cpp"
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
  %N = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %N) #9
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 dereferenceable(400) %a) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %a, i8 noundef 0, i64 noundef 400, i1 noundef false)
  store i32 2, ptr %a, align 16, !tbaa !5
  %0 = load i32, ptr %N, align 4, !tbaa !5
  switch i32 %0, label %for.cond.preheader [
    i32 0, label %if.then
    i32 1, label %if.then4
  ]

for.cond.preheader:                               ; preds = %entry
  %smax33 = call i32 @llvm.smax.i32(i32 %0, i32 1)
  br label %for.cond

if.then:                                          ; preds = %entry
  call fastcc void @outlined_ir_func_0(i32 noundef 1)
  br label %if.end71

if.then4:                                         ; preds = %entry
  call fastcc void @outlined_ir_func_0(i32 noundef 2)
  br label %if.end71

for.cond:                                         ; preds = %for.cond.preheader, %for.inc36
  %i.0 = phi i32 [ %inc37, %for.inc36 ], [ 1, %for.cond.preheader ]
  %m.0 = phi i32 [ %add, %for.inc36 ], [ undef, %for.cond.preheader ]
  %exitcond34.not = icmp eq i32 %i.0, %smax33
  br i1 %exitcond34.not, label %for.end38, label %for.cond.i

for.cond.i:                                       ; preds = %for.cond, %for.cond.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.cond.i ], [ 99, %for.cond ]
  %arrayidx.i = getelementptr inbounds i32, ptr %a, i64 %indvars.iv.i
  %1 = load i32, ptr %arrayidx.i, align 4, !tbaa !5, !invariant.load !9
  %cmp.i = icmp eq i32 %1, 0
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1
  br i1 %cmp.i, label %for.cond.i, label %_Z5shumuPi.exit, !llvm.loop !10

_Z5shumuPi.exit:                                  ; preds = %for.cond.i
  %indvars40.le = trunc i64 %indvars.iv.i to i32
  %smax = call i32 @llvm.smax.i32(i32 %indvars40.le, i32 -1)
  %2 = add i32 %smax, 1
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %_Z5shumuPi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %_Z5shumuPi.exit ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.cond17, label %for.inc

for.inc:                                          ; preds = %for.cond11
  %arrayidx14 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx14, align 4, !tbaa !5, !invariant.load !9
  %mul = shl nsw i32 %3, 1
  store i32 %mul, ptr %arrayidx14, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond11, !llvm.loop !13

for.cond17:                                       ; preds = %for.cond11, %for.inc33
  %indvars.iv25 = phi i64 [ %5, %for.inc33 ], [ 0, %for.cond11 ]
  %exitcond32 = icmp eq i64 %indvars.iv25, %wide.trip.count
  br i1 %exitcond32, label %for.inc36, label %for.body19

for.body19:                                       ; preds = %for.cond17
  %arrayidx21 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv25
  %4 = load i32, ptr %arrayidx21, align 4, !tbaa !5, !invariant.load !9
  %cmp22 = icmp sgt i32 %4, 9
  %5 = add nuw nsw i64 %indvars.iv25, 1
  br i1 %cmp22, label %if.then23, label %for.inc33

if.then23:                                        ; preds = %for.body19
  %arrayidx26 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %5
  %6 = load i32, ptr %arrayidx26, align 4, !tbaa !5, !invariant.load !9
  %inc27 = add nsw i32 %6, 1
  store i32 %inc27, ptr %arrayidx26, align 4, !tbaa !5
  %sub30 = add nsw i32 %4, -10
  store i32 %sub30, ptr %arrayidx21, align 4, !tbaa !5
  br label %for.inc33

for.inc33:                                        ; preds = %for.body19, %if.then23
  br label %for.cond17, !llvm.loop !14

for.inc36:                                        ; preds = %for.cond17
  %add = add nsw i32 %indvars40.le, 1
  %inc37 = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !15

for.end38:                                        ; preds = %for.cond
  %idxprom39 = sext i32 %m.0 to i64
  %arrayidx40 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom39
  %7 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %7, 0
  br i1 %cmp41, label %for.cond44.preheader, label %for.cond58

for.cond44.preheader:                             ; preds = %for.end38
  %8 = zext i32 %m.0 to i64
  br label %for.cond44

for.cond44:                                       ; preds = %for.cond44.preheader, %for.inc50
  %indvars.iv36 = phi i64 [ %8, %for.cond44.preheader ], [ %10, %for.inc50 ]
  %9 = trunc nuw i64 %indvars.iv36 to i32
  %cmp45 = icmp sgt i32 %9, 0
  br i1 %cmp45, label %for.inc50, label %for.end51

for.inc50:                                        ; preds = %for.cond44
  %10 = add nsw i64 %indvars.iv36, -1
  %arrayidx48 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %10
  %11 = load i32, ptr %arrayidx48, align 4, !tbaa !5, !invariant.load !9
  %call49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %11)
  br label %for.cond44, !llvm.loop !16

for.end51:                                        ; preds = %for.cond44
  %call52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end71

for.cond58:                                       ; preds = %for.end38, %for.inc64
  %i.2 = phi i32 [ %dec65, %for.inc64 ], [ %m.0, %for.end38 ]
  %cmp59 = icmp sgt i32 %i.2, -1
  br i1 %cmp59, label %for.inc64, label %if.end68

for.inc64:                                        ; preds = %for.cond58
  %idxprom61 = zext nneg i32 %i.2 to i64
  %arrayidx62 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %idxprom61
  %12 = load i32, ptr %arrayidx62, align 4, !tbaa !5, !invariant.load !9
  %call63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %12)
  %dec65 = add nsw i32 %i.2, -1
  br label %for.cond58, !llvm.loop !17

if.end68:                                         ; preds = %for.cond58
  %call67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end71

if.end71:                                         ; preds = %if.then4, %if.end68, %for.end51, %if.then
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %a) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %N) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z5shumuPi(ptr nofree noundef readonly captures(none) %a) local_unnamed_addr #6 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 99, %entry ]
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %cmp = icmp eq i32 %0, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %cmp, label %for.cond, label %for.end, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %1 = trunc nsw i64 %indvars.iv to i32
  ret i32 %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(i32 noundef %0) unnamed_addr #7 {
if.end71.exitStub:
  %call1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %0)
  %call2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call1, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }

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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
