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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k) #5
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %r) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %k)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 26
  br i1 %exitcond.not, label %for.cond2, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [26 x i32], ptr %a, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond, %for.body5
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.body5 ], [ 0, %for.cond ]
  %exitcond28.not = icmp eq i64 %indvars.iv25, 26
  br i1 %exitcond28.not, label %for.cond12, label %for.body5

for.body5:                                        ; preds = %for.cond2
  %arrayidx7 = getelementptr inbounds nuw [26 x i32], ptr %r, i64 0, i64 %indvars.iv25
  store i32 1, ptr %arrayidx7, align 4, !tbaa !5
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond2, !llvm.loop !12

for.cond12:                                       ; preds = %for.cond2, %for.body15
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.body15 ], [ 0, %for.cond2 ]
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp13 = icmp slt i64 %indvars.iv29, %1
  br i1 %cmp13, label %for.body15, label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %for.cond12
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count40 = zext nneg i32 %smax to i64
  br label %for.cond23

for.body15:                                       ; preds = %for.cond12
  %arrayidx17 = getelementptr inbounds nuw [26 x i32], ptr %a, i64 0, i64 %indvars.iv29
  %call18 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx17)
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond12, !llvm.loop !13

for.cond23:                                       ; preds = %for.cond23.preheader, %for.inc53
  %indvars.iv36 = phi i64 [ 0, %for.cond23.preheader ], [ %indvars.iv.next37, %for.inc53 ]
  %exitcond41.not = icmp eq i64 %indvars.iv36, %wide.trip.count40
  br i1 %exitcond41.not, label %for.cond57, label %for.body26

for.body26:                                       ; preds = %for.cond23
  %cmp27 = icmp eq i64 %indvars.iv36, 0
  br i1 %cmp27, label %if.then, label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.body26
  %arrayidx37 = getelementptr inbounds nuw [26 x i32], ptr %a, i64 0, i64 %indvars.iv36
  %2 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %arrayidx42 = getelementptr inbounds nuw [26 x i32], ptr %r, i64 0, i64 %indvars.iv36
  br label %for.cond30

if.then:                                          ; preds = %for.body26
  store i32 1, ptr %r, align 16, !tbaa !5
  br label %for.inc53

for.cond30:                                       ; preds = %for.cond30.preheader, %for.inc49
  %indvars.iv32 = phi i64 [ 0, %for.cond30.preheader ], [ %indvars.iv.next33, %for.inc49 ]
  %exitcond35.not = icmp eq i64 %indvars.iv32, %indvars.iv36
  br i1 %exitcond35.not, label %for.inc53, label %for.body33

for.body33:                                       ; preds = %for.cond30
  %arrayidx35 = getelementptr inbounds nuw [26 x i32], ptr %a, i64 0, i64 %indvars.iv32
  %3 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %cmp38.not = icmp slt i32 %3, %2
  br i1 %cmp38.not, label %for.inc49, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body33
  %arrayidx40 = getelementptr inbounds nuw [26 x i32], ptr %r, i64 0, i64 %indvars.iv32
  %4 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %5 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %cmp43.not = icmp slt i32 %4, %5
  br i1 %cmp43.not, label %for.inc49, label %if.then44

if.then44:                                        ; preds = %land.lhs.true
  %add = add nsw i32 %4, 1
  store i32 %add, ptr %arrayidx42, align 4, !tbaa !5
  br label %for.inc49

for.inc49:                                        ; preds = %for.body33, %land.lhs.true, %if.then44
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond30, !llvm.loop !14

for.inc53:                                        ; preds = %for.cond30, %if.then
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond23, !llvm.loop !15

for.cond57:                                       ; preds = %for.cond23, %for.body60
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.body60 ], [ 0, %for.cond23 ]
  %s.0 = phi i32 [ %spec.select, %for.body60 ], [ 0, %for.cond23 ]
  %exitcond45.not = icmp eq i64 %indvars.iv42, %wide.trip.count40
  br i1 %exitcond45.not, label %for.cond.cleanup59, label %for.body60

for.cond.cleanup59:                               ; preds = %for.cond57
  %call71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %s.0)
  %vtable.i = load ptr, ptr %call71, align 8, !tbaa !16
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call71, i64 %vbase.offset.i
  %call.i23 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call71, i8 noundef signext %call.i23)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %r) #5
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k) #5
  ret i32 0

for.body60:                                       ; preds = %for.cond57
  %arrayidx62 = getelementptr inbounds nuw [26 x i32], ptr %r, i64 0, i64 %indvars.iv42
  %6 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %6, i32 %s.0)
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond57, !llvm.loop !18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !8, i64 0}
!18 = distinct !{!18, !10, !11}
