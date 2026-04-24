; ModuleID = '<stdin>'
source_filename = "/tmp/tmpg_d1jn4t.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [1000 x i32], align 16
  %b = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #3
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %a) #3
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %b) #3
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp25 = icmp sgt i32 %0, 0
  br i1 %cmp25, label %for.body, label %for.end48

for.cond11.preheader:                             ; preds = %for.inc
  %sub = add i32 %d.1, -1
  %cmp1231 = icmp sgt i32 %d.1, 1
  br i1 %cmp1231, label %for.body13.preheader, label %for.end48

for.body13.preheader:                             ; preds = %for.cond11.preheader
  %wide.trip.count45 = zext nneg i32 %sub to i64
  %wide.trip.count = zext nneg i32 %d.1 to i64
  br label %for.body16.lr.ph

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %j.028 = phi i32 [ %j.1, %for.inc ], [ 0, %entry ]
  %d.026 = phi i32 [ %d.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %2 = and i32 %1, -2147483647
  %cmp4 = icmp eq i32 %2, 1
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %idxprom7 = sext i32 %j.028 to i64
  %arrayidx8 = getelementptr inbounds [1000 x i32], ptr %b, i64 0, i64 %idxprom7
  store i32 %1, ptr %arrayidx8, align 4, !tbaa !5
  %inc = add nsw i32 %j.028, 1
  %inc9 = add nsw i32 %d.026, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %d.1 = phi i32 [ %inc9, %if.then ], [ %d.026, %for.body ]
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.028, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp, label %for.body, label %for.cond11.preheader, !llvm.loop !9

for.cond11.loopexit:                              ; preds = %for.inc32
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %exitcond46.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count45
  br i1 %exitcond46.not, label %for.body41.preheader, label %for.body16.lr.ph, !llvm.loop !12

for.body41.preheader:                             ; preds = %for.cond11.loopexit
  %wide.trip.count50 = zext nneg i32 %sub to i64
  br label %for.body41

for.body16.lr.ph:                                 ; preds = %for.cond11.loopexit, %for.body13.preheader
  %indvars.iv42 = phi i64 [ 0, %for.body13.preheader ], [ %indvars.iv.next43, %for.cond11.loopexit ]
  %indvars.iv37 = phi i64 [ 1, %for.body13.preheader ], [ %indvars.iv.next38, %for.cond11.loopexit ]
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %arrayidx18 = getelementptr inbounds nuw [1000 x i32], ptr %b, i64 0, i64 %indvars.iv42
  br label %for.body16

for.body16:                                       ; preds = %for.body16.lr.ph, %for.inc32
  %indvars.iv39 = phi i64 [ %indvars.iv37, %for.body16.lr.ph ], [ %indvars.iv.next40, %for.inc32 ]
  %5 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %arrayidx20 = getelementptr inbounds nuw [1000 x i32], ptr %b, i64 0, i64 %indvars.iv39
  %6 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %cmp21 = icmp sgt i32 %5, %6
  br i1 %cmp21, label %if.then22, label %for.inc32

if.then22:                                        ; preds = %for.body16
  store i32 %6, ptr %arrayidx18, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx20, align 4, !tbaa !5
  br label %for.inc32

for.inc32:                                        ; preds = %for.body16, %if.then22
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next40, %wide.trip.count
  br i1 %exitcond.not, label %for.cond11.loopexit, label %for.body16, !llvm.loop !13

for.body41:                                       ; preds = %for.body41.preheader, %for.body41
  %indvars.iv47 = phi i64 [ 0, %for.body41.preheader ], [ %indvars.iv.next48, %for.body41 ]
  %arrayidx43 = getelementptr inbounds nuw [1000 x i32], ptr %b, i64 0, i64 %indvars.iv47
  %7 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %call44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %7)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call44, ptr noundef nonnull @.str, i64 noundef 1)
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %exitcond51.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count50
  br i1 %exitcond51.not, label %for.end48, label %for.body41, !llvm.loop !14

for.end48:                                        ; preds = %for.body41, %entry, %for.cond11.preheader
  %sub5559 = phi i32 [ %sub, %for.cond11.preheader ], [ -1, %entry ], [ %sub, %for.body41 ]
  %idxprom50 = sext i32 %sub5559 to i64
  %arrayidx51 = getelementptr inbounds [1000 x i32], ptr %b, i64 0, i64 %idxprom50
  %8 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %call52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %b) #3
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #3
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
!14 = distinct !{!14, !10, !11}
