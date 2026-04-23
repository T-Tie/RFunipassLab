; ModuleID = '<stdin>'
source_filename = "/tmp/tmpaddenp2d.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100001 x i32], align 16
  %b = alloca [100001 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 400004, ptr nonnull %a) #3
  call void @llvm.lifetime.start.p0(i64 400004, ptr nonnull %b) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #3
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not15 = icmp slt i32 %0, 1
  br i1 %cmp.not15, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds nuw [100001 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %2
  br i1 %cmp.not.not, label %for.body, label %for.end.loopexit, !llvm.loop !9

for.end.loopexit:                                 ; preds = %for.body
  %arrayidx2.phi.trans.insert = getelementptr inbounds nuw i8, ptr %a, i64 4
  %.pre = load i32, ptr %arrayidx2.phi.trans.insert, align 4, !tbaa !5
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %3 = phi i32 [ %.pre, %for.end.loopexit ], [ undef, %entry ]
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %b, i64 4
  store i32 %3, ptr %arrayidx4, align 4, !tbaa !5
  %call6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %3)
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %cmp8.not20 = icmp slt i32 %4, 2
  br i1 %cmp8.not20, label %for.end35, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.end, %for.inc33
  %5 = phi i32 [ %12, %for.inc33 ], [ %4, %for.end ]
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.inc33 ], [ 2, %for.end ]
  %step.022 = phi i32 [ %step.1, %for.inc33 ], [ 1, %for.end ]
  %cmp11.not17 = icmp slt i32 %step.022, 1
  br i1 %cmp11.not17, label %for.cond10.preheader.for.end20_crit_edge, label %for.body12.lr.ph

for.cond10.preheader.for.end20_crit_edge:         ; preds = %for.cond10.preheader
  %.pre31 = add nsw i32 %step.022, 1
  br label %for.end20

for.body12.lr.ph:                                 ; preds = %for.cond10.preheader
  %arrayidx14 = getelementptr inbounds nuw [100001 x i32], ptr %a, i64 0, i64 %indvars.iv27
  %6 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %7 = add nuw i32 %step.022, 1
  %wide.trip.count = zext i32 %7 to i64
  br label %for.body12

for.body12:                                       ; preds = %for.body12.lr.ph, %for.inc18
  %indvars.iv24 = phi i64 [ 1, %for.body12.lr.ph ], [ %indvars.iv.next25, %for.inc18 ]
  %arrayidx16 = getelementptr inbounds nuw [100001 x i32], ptr %b, i64 0, i64 %indvars.iv24
  %8 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %cmp17 = icmp eq i32 %6, %8
  br i1 %cmp17, label %for.end20.loopexit, label %for.inc18

for.inc18:                                        ; preds = %for.body12
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count
  br i1 %exitcond.not, label %if.then22, label %for.body12, !llvm.loop !12

for.end20.loopexit:                               ; preds = %for.body12
  %9 = trunc nuw nsw i64 %indvars.iv24 to i32
  br label %for.end20

for.end20:                                        ; preds = %for.end20.loopexit, %for.cond10.preheader.for.end20_crit_edge
  %add.pre-phi = phi i32 [ %.pre31, %for.cond10.preheader.for.end20_crit_edge ], [ %7, %for.end20.loopexit ]
  %j.0.lcssa = phi i32 [ 1, %for.cond10.preheader.for.end20_crit_edge ], [ %9, %for.end20.loopexit ]
  %cmp21 = icmp eq i32 %j.0.lcssa, %add.pre-phi
  br i1 %cmp21, label %if.then22, label %for.inc33

if.then22:                                        ; preds = %for.inc18, %for.end20
  %add.pre-phi35 = phi i32 [ %add.pre-phi, %for.end20 ], [ %7, %for.inc18 ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %arrayidx26 = getelementptr inbounds nuw [100001 x i32], ptr %a, i64 0, i64 %indvars.iv27
  %10 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %call27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %10)
  %11 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %idxprom30 = sext i32 %add.pre-phi35 to i64
  %arrayidx31 = getelementptr inbounds [100001 x i32], ptr %b, i64 0, i64 %idxprom30
  store i32 %11, ptr %arrayidx31, align 4, !tbaa !5
  %.pre30 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc33

for.inc33:                                        ; preds = %for.end20, %if.then22
  %12 = phi i32 [ %.pre30, %if.then22 ], [ %5, %for.end20 ]
  %step.1 = phi i32 [ %add.pre-phi35, %if.then22 ], [ %step.022, %for.end20 ]
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %13 = sext i32 %12 to i64
  %cmp8.not.not = icmp slt i64 %indvars.iv27, %13
  br i1 %cmp8.not.not, label %for.cond10.preheader, label %for.end35, !llvm.loop !13

for.end35:                                        ; preds = %for.inc33, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #3
  call void @llvm.lifetime.end.p0(i64 400004, ptr nonnull %b) #3
  call void @llvm.lifetime.end.p0(i64 400004, ptr nonnull %a) #3
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
