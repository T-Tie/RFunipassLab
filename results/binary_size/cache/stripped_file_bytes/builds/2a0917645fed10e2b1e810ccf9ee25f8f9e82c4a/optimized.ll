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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %b) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %d.0 = phi i32 [ %d.1, %if.end ], [ 0, %entry ]
  %j.0 = phi i32 [ %j.1, %if.end ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.cond
  %sub = add nsw i32 %d.0, -1
  %smax = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond11

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %3 = and i32 %2, -2147483647
  %cmp4 = icmp eq i32 %3, 1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %idxprom7 = sext i32 %j.0 to i64
  %arrayidx8 = getelementptr inbounds [1000 x i32], ptr %b, i64 0, i64 %idxprom7
  store i32 %2, ptr %arrayidx8, align 4, !tbaa !5
  %inc = add nsw i32 %j.0, 1
  %inc9 = add nsw i32 %d.0, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %d.1 = phi i32 [ %inc9, %if.then ], [ %d.0, %for.body ]
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.0, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !10

for.cond11:                                       ; preds = %for.cond11.preheader, %for.end34
  %indvars.iv14 = phi i64 [ 0, %for.cond11.preheader ], [ %indvars.iv.next15, %for.end34 ]
  %exitcond.not = icmp eq i64 %indvars.iv14, %wide.trip.count
  br i1 %exitcond.not, label %for.cond38, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond11
  %arrayidx18 = getelementptr inbounds nuw [1000 x i32], ptr %b, i64 0, i64 %indvars.iv14
  br label %for.cond14

for.cond14:                                       ; preds = %for.cond14.preheader, %if.end31
  %indvars.iv16 = phi i64 [ %indvars.iv14, %for.cond14.preheader ], [ %indvars.iv.next17, %if.end31 ]
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %4 = trunc nuw i64 %indvars.iv.next17 to i32
  %cmp15 = icmp sgt i32 %d.0, %4
  br i1 %cmp15, label %for.body16, label %for.end34

for.body16:                                       ; preds = %for.cond14
  %5 = load i32, ptr %arrayidx18, align 4, !tbaa !5, !invariant.load !9
  %arrayidx20 = getelementptr inbounds nuw [1000 x i32], ptr %b, i64 0, i64 %indvars.iv.next17
  %6 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !9
  %cmp21 = icmp sgt i32 %5, %6
  br i1 %cmp21, label %if.then22, label %if.end31

if.then22:                                        ; preds = %for.body16
  store i32 %6, ptr %arrayidx18, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx20, align 4, !tbaa !5
  br label %if.end31

if.end31:                                         ; preds = %if.then22, %for.body16
  br label %for.cond14, !llvm.loop !13

for.end34:                                        ; preds = %for.cond14
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond11, !llvm.loop !14

for.cond38:                                       ; preds = %for.cond11, %for.body41
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.body41 ], [ 0, %for.cond11 ]
  %exitcond24.not = icmp eq i64 %indvars.iv20, %wide.trip.count
  br i1 %exitcond24.not, label %for.end48, label %for.body41

for.body41:                                       ; preds = %for.cond38
  %arrayidx43 = getelementptr inbounds nuw [1000 x i32], ptr %b, i64 0, i64 %indvars.iv20
  %7 = load i32, ptr %arrayidx43, align 4, !tbaa !5, !invariant.load !9
  %call44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %7)
  %call45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call44, ptr noundef nonnull @.str)
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond38, !llvm.loop !15

for.end48:                                        ; preds = %for.cond38
  %idxprom50 = sext i32 %sub to i64
  %arrayidx51 = getelementptr inbounds [1000 x i32], ptr %b, i64 0, i64 %idxprom50
  %8 = load i32, ptr %arrayidx51, align 4, !tbaa !5, !invariant.load !9
  %call52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
