; ModuleID = '<stdin>'
source_filename = "/tmp/tmps_vtyuxk.cpp"
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
  %a = alloca [100 x i32], align 16
  %b = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(400) %a, i8 noundef 0, i64 noundef 400, i1 noundef false) #8
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %b) #7
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %a.sink = phi ptr [ %n, %entry ], [ %a, %for.cond ]
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %a.sink)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.cond, label %for.cond3

for.cond3:                                        ; preds = %for.cond, %for.end29
  %1 = phi i32 [ %.pre, %for.end29 ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end29 ], [ 0, %for.cond ]
  %t.0 = phi i32 [ %t.2, %for.end29 ], [ 0, %for.cond ]
  %p2.0 = phi ptr [ %p2.2, %for.end29 ], [ %b, %for.cond ]
  %cmp4 = icmp sgt i32 %1, 0
  br i1 %cmp4, label %for.cond6.preheader, label %for.cond34.preheader

for.cond6.preheader:                              ; preds = %for.cond3
  %add.ptr11 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv
  br label %for.cond6

for.cond34.preheader:                             ; preds = %for.cond3
  %cmp35 = icmp slt i32 %t.0, 2
  call void @llvm.assume(i1 %cmp35)
  %idx.ext44 = sext i32 %t.0 to i64
  %add.ptr45 = getelementptr inbounds i32, ptr %b, i64 %idx.ext44
  %add.ptr46 = getelementptr inbounds i8, ptr %add.ptr45, i64 -4
  %2 = load i32, ptr %add.ptr46, align 4, !tbaa !5, !invariant.load !9
  %call47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %2)
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %b) #9
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %a) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  ret i32 0

for.cond6:                                        ; preds = %for.cond6.preheader, %if.end
  %t.1 = phi i32 [ %t.3, %if.end ], [ %t.0, %for.cond6.preheader ]
  %p2.1 = phi ptr [ %p2.3, %if.end ], [ %p2.0, %for.cond6.preheader ]
  %cmp7 = phi i1 [ false, %if.end ], [ true, %for.cond6.preheader ]
  %.sink = phi i64 [ 1, %if.end ], [ 0, %for.cond6.preheader ]
  br i1 %cmp7, label %for.body8, label %for.end29

for.body8:                                        ; preds = %for.cond6
  %cmp9 = icmp eq i64 %.sink, %indvars.iv
  %.pre14 = load i32, ptr %add.ptr11, align 4, !tbaa !5, !invariant.load !9
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body8
  store i32 %.pre14, ptr %p2.1, align 4, !tbaa !5
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p2.1, i64 4
  %inc12 = add nsw i32 %t.1, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body8
  %t.3 = phi i32 [ %inc12, %if.then ], [ %t.1, %for.body8 ]
  %p2.3 = phi ptr [ %incdec.ptr, %if.then ], [ %p2.1, %for.body8 ]
  %add.ptr16 = getelementptr inbounds nuw i32, ptr %a, i64 %.sink
  %3 = load i32, ptr %add.ptr16, align 4, !tbaa !5, !invariant.load !9
  %cmp17.not = icmp eq i32 %.pre14, %3
  br i1 %cmp17.not, label %for.end29, label %for.cond6, !llvm.loop !10

for.end29:                                        ; preds = %if.end, %for.cond6
  %t.2 = phi i32 [ %t.1, %for.cond6 ], [ %t.3, %if.end ]
  %p2.2 = phi ptr [ %p2.1, %for.cond6 ], [ %p2.3, %if.end ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nofree nounwind }
attributes #8 = { nofree }
attributes #9 = { nounwind }

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
