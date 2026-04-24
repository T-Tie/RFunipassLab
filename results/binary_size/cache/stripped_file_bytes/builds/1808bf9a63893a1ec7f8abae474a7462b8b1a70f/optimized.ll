; ModuleID = '<stdin>'
source_filename = "/tmp/tmpf39r4c1j.cpp"
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
  %b = alloca [101 x i32], align 16
  %str = alloca [101 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 404, ptr noundef nonnull align 16 %b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(404) %b, i8 noundef 0, i64 noundef 404, i1 noundef false) #7
  call void @llvm.lifetime.start.p0(i64 noundef 101, ptr noundef nonnull align 16 %str) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 %str, i64 noundef 101)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #8
  %sext = shl i64 %call2, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr inbounds i8, ptr %str, i64 %idx.ext
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %p.0 = phi ptr [ %str, %entry ], [ %incdec.ptr, %for.inc ]
  %q.0 = phi ptr [ %b, %entry ], [ %incdec.ptr11, %for.inc ]
  %cmp = icmp ult ptr %p.0, %add.ptr
  br i1 %cmp, label %for.body, label %for.cond14

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %p.0, align 1, !tbaa !5, !invariant.load !8
  %cmp7 = icmp eq i8 %0, 32
  br i1 %cmp7, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %p.0, i64 1
  %1 = load i8, ptr %add.ptr8, align 1, !tbaa !5, !invariant.load !8
  %cmp10 = icmp eq i8 %1, 32
  br i1 %cmp10, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %q.0, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p.0, i64 1
  %incdec.ptr11 = getelementptr inbounds nuw i8, ptr %q.0, i64 4
  br label %for.cond, !llvm.loop !11

for.cond14:                                       ; preds = %for.cond, %for.inc24
  %p.1 = phi ptr [ %incdec.ptr25, %for.inc24 ], [ %str, %for.cond ]
  %q.1 = phi ptr [ %incdec.ptr26, %for.inc24 ], [ %b, %for.cond ]
  %cmp18 = icmp ult ptr %p.1, %add.ptr
  br i1 %cmp18, label %for.body19, label %for.end27

for.body19:                                       ; preds = %for.cond14
  %2 = load i32, ptr %q.1, align 4, !tbaa !9
  %cmp20.not = icmp eq i32 %2, 1
  br i1 %cmp20.not, label %for.inc24, label %if.then21

if.then21:                                        ; preds = %for.body19
  %3 = load i8, ptr %p.1, align 1, !tbaa !5
  %call22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %3)
  br label %for.inc24

for.inc24:                                        ; preds = %for.body19, %if.then21
  %incdec.ptr25 = getelementptr inbounds nuw i8, ptr %p.1, i64 1
  %incdec.ptr26 = getelementptr inbounds nuw i8, ptr %q.1, i64 4
  br label %for.cond14, !llvm.loop !14

for.end27:                                        ; preds = %for.cond14
  call void @llvm.lifetime.end.p0(i64 noundef 101, ptr noundef nonnull %str) #9
  call void @llvm.lifetime.end.p0(i64 noundef 404, ptr noundef nonnull %b) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3 align 2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nofree }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !6, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
