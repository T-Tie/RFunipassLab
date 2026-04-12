; ModuleID = '<stdin>'
source_filename = "/tmp/tmpaoezpp9c.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [201 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 804, ptr nonnull %a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(804) %a, i8 0, i64 804, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i15 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i15)
  %call.i.i17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i16)
  br label %if.end42

if.else:                                          ; preds = %entry
  store i32 1, ptr %a, align 16, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %1 = add nuw i32 %smax, 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %if.else
  %i.0 = phi i32 [ 1, %if.else ], [ %inc28, %for.inc27 ]
  %exitcond24 = icmp eq i32 %i.0, %1
  br i1 %exitcond24, label %while.cond, label %for.cond4

for.cond4:                                        ; preds = %for.cond, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 200
  br i1 %exitcond.not, label %for.cond10, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %arrayidx7 = getelementptr inbounds nuw [201 x i32], ptr %a, i64 0, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %mul = shl nsw i32 %2, 1
  store i32 %mul, ptr %arrayidx7, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !11

for.cond10:                                       ; preds = %for.cond4, %for.cond10.backedge
  %indvars.iv19 = phi i64 [ %indvars.iv19.be, %for.cond10.backedge ], [ 0, %for.cond4 ]
  %exitcond23.not = icmp eq i64 %indvars.iv19, 200
  br i1 %exitcond23.not, label %for.inc27, label %for.body12

for.body12:                                       ; preds = %for.cond10
  %arrayidx14 = getelementptr inbounds nuw [201 x i32], ptr %a, i64 0, i64 %indvars.iv19
  %3 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp sgt i32 %3, 9
  br i1 %cmp15, label %if.then16, label %for.body12.for.inc24_crit_edge

for.body12.for.inc24_crit_edge:                   ; preds = %for.body12
  %.pre = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond10.backedge

for.cond10.backedge:                              ; preds = %for.body12.for.inc24_crit_edge, %if.then16
  %indvars.iv19.be = phi i64 [ %.pre, %for.body12.for.inc24_crit_edge ], [ %4, %if.then16 ]
  br label %for.cond10, !llvm.loop !14

if.then16:                                        ; preds = %for.body12
  %rem = urem i32 %3, 10
  store i32 %rem, ptr %arrayidx14, align 4, !tbaa !5
  %4 = add nuw nsw i64 %indvars.iv19, 1
  %arrayidx22 = getelementptr inbounds nuw [201 x i32], ptr %a, i64 0, i64 %4
  %5 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %inc23 = add nsw i32 %5, 1
  store i32 %inc23, ptr %arrayidx22, align 4, !tbaa !5
  br label %for.cond10.backedge

for.inc27:                                        ; preds = %for.cond10
  %inc28 = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !15

while.cond:                                       ; preds = %for.cond, %while.cond
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %while.cond ], [ 200, %for.cond ]
  %arrayidx31 = getelementptr inbounds [201 x i32], ptr %a, i64 0, i64 %indvars.iv25
  %6 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %cmp32 = icmp eq i32 %6, 0
  %indvars.iv.next26 = add nsw i64 %indvars.iv25, -1
  br i1 %cmp32, label %while.cond, label %for.cond33.preheader, !llvm.loop !16

for.cond33.preheader:                             ; preds = %while.cond
  %7 = trunc nsw i64 %indvars.iv25 to i32
  br label %for.cond33

for.cond33:                                       ; preds = %for.cond33.preheader, %for.body35
  %k.1 = phi i32 [ %dec40, %for.body35 ], [ %7, %for.cond33.preheader ]
  %cmp34 = icmp sgt i32 %k.1, -1
  br i1 %cmp34, label %for.body35, label %if.end42

for.body35:                                       ; preds = %for.cond33
  %idxprom36 = zext nneg i32 %k.1 to i64
  %arrayidx37 = getelementptr inbounds nuw [201 x i32], ptr %a, i64 0, i64 %idxprom36
  %8 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %call38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  %dec40 = add nsw i32 %k.1, -1
  br label %for.cond33, !llvm.loop !17

if.end42:                                         ; preds = %for.cond33, %if.then
  call void @llvm.lifetime.end.p0(i64 804, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
