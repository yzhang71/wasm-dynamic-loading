(module
  (type (;0;) (func))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32) (result i32)))
  (type (;3;) (func (param i32 i64 i32) (result i64)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (result i32)))
  (type (;6;) (func (param i32 i64 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32)))
  (type (;9;) (func (param i32 i32 i32)))
  (type (;10;) (func (param f64 i32) (result f64)))
  (type (;11;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;12;) (func (param i64 i32 i32) (result i32)))
  (type (;13;) (func (param i64 i32) (result i32)))
  (type (;14;) (func (param i32 i32 i32 i32 i32)))
  (type (;15;) (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type (;16;) (func (param i32 i32 i32 i32)))
  (type (;17;) (func (param i32 i32 i32 i64) (result i32)))
  (import "env" "hello_world" (func $hello_world (type 5)))
  (import "wasi_snapshot_preview1" "fd_close" (func $__imported_wasi_snapshot_preview1_fd_close (type 1)))
  (import "wasi_snapshot_preview1" "fd_fdstat_get" (func $__imported_wasi_snapshot_preview1_fd_fdstat_get (type 4)))
  (import "wasi_snapshot_preview1" "fd_seek" (func $__imported_wasi_snapshot_preview1_fd_seek (type 6)))
  (import "wasi_snapshot_preview1" "fd_write" (func $__imported_wasi_snapshot_preview1_fd_write (type 7)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $__imported_wasi_snapshot_preview1_proc_exit (type 8)))
  (func $__wasm_call_ctors (type 0))
  (func $_start (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 0
    i32.const 16
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    i32.const 0
    local.set 3
    local.get 2
    local.get 3
    i32.store offset=12
    i32.const 1
    local.set 4
    local.get 2
    local.get 4
    i32.store offset=8
    local.get 2
    i32.load offset=12
    local.set 5
    local.get 2
    i32.load offset=8
    local.set 6
    local.get 3
    local.get 5
    local.get 6
    i32.atomic.rmw.cmpxchg offset=3888
    local.set 7
    local.get 7
    local.get 5
    i32.eq
    local.set 8
    i32.const 1
    local.set 9
    local.get 8
    local.get 9
    i32.and
    local.set 10
    block  ;; label = @1
      local.get 10
      br_if 0 (;@1;)
      local.get 2
      local.get 7
      i32.store offset=12
    end
    i32.const 1
    local.set 11
    local.get 8
    local.get 11
    i32.and
    local.set 12
    local.get 2
    local.get 12
    i32.store8 offset=7
    local.get 2
    i32.load8_u offset=7
    local.set 13
    i32.const 1
    local.set 14
    local.get 13
    local.get 14
    i32.and
    local.set 15
    block  ;; label = @1
      local.get 15
      br_if 0 (;@1;)
      unreachable
    end
    call $__wasi_init_tp
    call $__wasm_call_ctors
    call $__original_main
    local.set 16
    local.get 2
    local.get 16
    i32.store
    call $__wasm_call_dtors
    local.get 2
    i32.load
    local.set 17
    block  ;; label = @1
      local.get 17
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.load
      local.set 18
      local.get 18
      call $__wasi_proc_exit
      unreachable
    end
    i32.const 16
    local.set 19
    local.get 2
    local.get 19
    i32.add
    local.set 20
    local.get 20
    global.set $__stack_pointer
    return)
  (func $__original_main (type 5) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 0
    i32.const 16
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    i32.const 0
    local.set 3
    local.get 2
    local.get 3
    i32.store offset=12
    call $hello_world
    drop
    i32.const 0
    local.set 4
    i32.const 16
    local.set 5
    local.get 2
    local.get 5
    i32.add
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 4
    return)
  (func $main (type 4) (param i32 i32) (result i32)
    (local i32)
    call $__original_main
    local.set 2
    local.get 2
    return)
  (func $__wasi_fd_close (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    call $__imported_wasi_snapshot_preview1_fd_close
    local.set 5
    local.get 3
    local.get 5
    i32.store offset=8
    local.get 3
    i32.load offset=8
    local.set 6
    i32.const 65535
    local.set 7
    local.get 6
    local.get 7
    i32.and
    local.set 8
    i32.const 16
    local.set 9
    local.get 3
    local.get 9
    i32.add
    local.set 10
    local.get 10
    global.set $__stack_pointer
    local.get 8
    return)
  (func $__wasi_fd_fdstat_get (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    i32.load offset=12
    local.set 5
    local.get 4
    i32.load offset=8
    local.set 6
    local.get 5
    local.get 6
    call $__imported_wasi_snapshot_preview1_fd_fdstat_get
    local.set 7
    local.get 4
    local.get 7
    i32.store offset=4
    local.get 4
    i32.load offset=4
    local.set 8
    i32.const 65535
    local.set 9
    local.get 8
    local.get 9
    i32.and
    local.set 10
    i32.const 16
    local.set 11
    local.get 4
    local.get 11
    i32.add
    local.set 12
    local.get 12
    global.set $__stack_pointer
    local.get 10
    return)
  (func $__wasi_fd_seek (type 6) (param i32 i64 i32 i32) (result i32)
    (local i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 32
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 6
    local.get 0
    i32.store offset=28
    local.get 6
    local.get 1
    i64.store offset=16
    local.get 6
    local.get 2
    i32.store8 offset=15
    local.get 6
    local.get 3
    i32.store offset=8
    local.get 6
    i32.load offset=28
    local.set 7
    local.get 6
    i64.load offset=16
    local.set 8
    local.get 6
    i32.load8_u offset=15
    local.set 9
    i32.const 255
    local.set 10
    local.get 9
    local.get 10
    i32.and
    local.set 11
    local.get 6
    i32.load offset=8
    local.set 12
    local.get 7
    local.get 8
    local.get 11
    local.get 12
    call $__imported_wasi_snapshot_preview1_fd_seek
    local.set 13
    local.get 6
    local.get 13
    i32.store offset=4
    local.get 6
    i32.load offset=4
    local.set 14
    i32.const 65535
    local.set 15
    local.get 14
    local.get 15
    i32.and
    local.set 16
    i32.const 32
    local.set 17
    local.get 6
    local.get 17
    i32.add
    local.set 18
    local.get 18
    global.set $__stack_pointer
    local.get 16
    return)
  (func $__wasi_fd_write (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 32
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 6
    local.get 0
    i32.store offset=28
    local.get 6
    local.get 1
    i32.store offset=24
    local.get 6
    local.get 2
    i32.store offset=20
    local.get 6
    local.get 3
    i32.store offset=16
    local.get 6
    i32.load offset=28
    local.set 7
    local.get 6
    i32.load offset=24
    local.set 8
    local.get 6
    i32.load offset=20
    local.set 9
    local.get 6
    i32.load offset=16
    local.set 10
    local.get 7
    local.get 8
    local.get 9
    local.get 10
    call $__imported_wasi_snapshot_preview1_fd_write
    local.set 11
    local.get 6
    local.get 11
    i32.store offset=12
    local.get 6
    i32.load offset=12
    local.set 12
    i32.const 65535
    local.set 13
    local.get 12
    local.get 13
    i32.and
    local.set 14
    i32.const 32
    local.set 15
    local.get 6
    local.get 15
    i32.add
    local.set 16
    local.get 16
    global.set $__stack_pointer
    local.get 14
    return)
  (func $__wasi_proc_exit (type 8) (param i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    call $__imported_wasi_snapshot_preview1_proc_exit
    unreachable)
  (func $__wasi_init_tp (type 0)
    (local i32)
    call $__get_tp
    local.set 0
    local.get 0
    call $__init_tp
    drop
    return)
  (func $__get_tp (type 5) (result i32)
    (local i32 i32 i32)
    i32.const 1028
    local.set 0
    global.get $__tls_base
    local.set 1
    local.get 1
    local.get 0
    i32.add
    local.set 2
    local.get 2
    return)
  (func $__init_tp (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 3
    local.get 4
    i32.store offset=8
    local.get 3
    i32.load offset=8
    local.set 5
    local.get 3
    i32.load offset=8
    local.set 6
    local.get 6
    local.get 5
    i32.store
    local.get 3
    local.set 7
    local.get 7
    call $get_stack_bounds
    local.get 3
    i32.load offset=4
    local.set 8
    i32.const 8388608
    local.set 9
    local.get 8
    local.set 10
    local.get 9
    local.set 11
    local.get 10
    local.get 11
    i32.lt_u
    local.set 12
    i32.const 1
    local.set 13
    local.get 12
    local.get 13
    i32.and
    local.set 14
    block  ;; label = @1
      block  ;; label = @2
        local.get 14
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=4
        local.set 15
        local.get 15
        local.set 16
        br 1 (;@1;)
      end
      i32.const 8388608
      local.set 17
      local.get 17
      local.set 16
    end
    local.get 16
    local.set 18
    i32.const 0
    local.set 19
    local.get 19
    local.get 18
    i32.store offset=3884
    local.get 3
    i32.load offset=8
    local.set 20
    i32.const 2
    local.set 21
    local.get 20
    local.get 21
    i32.store offset=28
    local.get 3
    i32.load
    local.set 22
    local.get 3
    i32.load offset=8
    local.set 23
    local.get 23
    local.get 22
    i32.store offset=48
    local.get 3
    i32.load offset=4
    local.set 24
    local.get 3
    i32.load offset=8
    local.set 25
    local.get 25
    local.get 24
    i32.store offset=52
    local.get 3
    i32.load offset=8
    local.set 26
    i32.const 0
    local.set 27
    local.get 26
    local.get 27
    i32.store offset=56
    local.get 3
    i32.load offset=8
    local.set 28
    i32.const 1073741823
    local.set 29
    local.get 28
    local.get 29
    i32.store offset=20
    local.get 3
    i32.load offset=8
    local.set 30
    i32.const 3896
    local.set 31
    i32.const 8
    local.set 32
    local.get 31
    local.get 32
    i32.add
    local.set 33
    local.get 30
    local.get 33
    i32.store offset=92
    local.get 3
    i32.load offset=8
    local.set 34
    i32.const 72
    local.set 35
    local.get 34
    local.get 35
    i32.add
    local.set 36
    local.get 3
    i32.load offset=8
    local.set 37
    local.get 37
    local.get 36
    i32.store offset=72
    i32.const 0
    local.set 38
    local.get 38
    i32.load offset=3892
    local.set 39
    local.get 3
    i32.load offset=8
    local.set 40
    local.get 40
    local.get 39
    i32.store offset=12
    local.get 3
    i32.load offset=8
    local.set 41
    local.get 3
    i32.load offset=8
    local.set 42
    local.get 42
    local.get 41
    i32.store offset=4
    local.get 3
    i32.load offset=8
    local.set 43
    local.get 43
    local.get 41
    i32.store offset=8
    i32.const 0
    local.set 44
    i32.const 16
    local.set 45
    local.get 3
    local.get 45
    i32.add
    local.set 46
    local.get 46
    global.set $__stack_pointer
    local.get 44
    return)
  (func $get_stack_bounds (type 8) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    i32.const 70528
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        i32.const 70528
        local.set 5
        local.get 0
        local.get 5
        i32.store
        i32.const 70528
        local.set 6
        i32.const 4992
        local.set 7
        local.get 6
        local.get 7
        i32.sub
        local.set 8
        local.get 0
        local.get 8
        i32.store offset=4
        br 1 (;@1;)
      end
      global.get $__stack_pointer
      local.set 9
      local.get 9
      local.set 10
      local.get 3
      local.get 10
      i32.store offset=12
      local.get 3
      i32.load offset=12
      local.set 11
      i32.const 1024
      local.set 12
      local.get 11
      local.set 13
      local.get 12
      local.set 14
      local.get 13
      local.get 14
      i32.gt_u
      local.set 15
      i32.const 1
      local.set 16
      local.get 15
      local.get 16
      i32.and
      local.set 17
      block  ;; label = @2
        block  ;; label = @3
          local.get 17
          i32.eqz
          br_if 0 (;@3;)
          i32.const 70528
          local.set 18
          local.get 0
          local.get 18
          i32.store
          i32.const 70528
          local.set 19
          i32.const 4988
          local.set 20
          local.get 19
          local.get 20
          i32.sub
          local.set 21
          local.get 0
          local.get 21
          i32.store offset=4
          br 1 (;@2;)
        end
        i32.const 1024
        local.set 22
        local.get 0
        local.get 22
        i32.store
        i32.const 1024
        local.set 23
        local.get 0
        local.get 23
        i32.store offset=4
      end
    end
    return)
  (func $dummy (type 0)
    return)
  (func $__wasm_call_dtors (type 0)
    (local i32 i32)
    i32.const 1
    local.set 0
    local.get 0
    call_indirect (type 0)
    i32.const 2
    local.set 1
    local.get 1
    call_indirect (type 0)
    return)
  (func $__wasilibc_populate_preopens (type 0)
    return)
  (func $close (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=8
    call $__wasilibc_populate_preopens
    local.get 3
    i32.load offset=8
    local.set 4
    local.get 4
    call $__wasi_fd_close
    local.set 5
    local.get 3
    local.get 5
    i32.store16 offset=6
    local.get 3
    i32.load16_u offset=6
    local.set 6
    i32.const 65535
    local.set 7
    local.get 6
    local.get 7
    i32.and
    local.set 8
    block  ;; label = @1
      block  ;; label = @2
        local.get 8
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load16_u offset=6
        local.set 9
        i32.const 65535
        local.set 10
        local.get 9
        local.get 10
        i32.and
        local.set 11
        i32.const 1024
        local.set 12
        global.get $__tls_base
        local.set 13
        local.get 13
        local.get 12
        i32.add
        local.set 14
        local.get 14
        local.get 11
        i32.store
        i32.const -1
        local.set 15
        local.get 3
        local.get 15
        i32.store offset=12
        br 1 (;@1;)
      end
      i32.const 0
      local.set 16
      local.get 3
      local.get 16
      i32.store offset=12
    end
    local.get 3
    i32.load offset=12
    local.set 17
    i32.const 16
    local.set 18
    local.get 3
    local.get 18
    i32.add
    local.set 19
    local.get 19
    global.set $__stack_pointer
    local.get 17
    return)
  (func $dummy.1 (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    return)
  (func $__stdio_close (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    i32.load offset=56
    local.set 5
    i32.const 3
    local.set 6
    local.get 5
    local.get 6
    call_indirect (type 1)
    local.set 7
    local.get 7
    call $close
    local.set 8
    i32.const 16
    local.set 9
    local.get 3
    local.get 9
    i32.add
    local.set 10
    local.get 10
    global.set $__stack_pointer
    local.get 8
    return)
  (func $writev (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 32
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store offset=24
    local.get 5
    local.get 1
    i32.store offset=20
    local.get 5
    local.get 2
    i32.store offset=16
    local.get 5
    i32.load offset=16
    local.set 6
    i32.const 0
    local.set 7
    local.get 6
    local.set 8
    local.get 7
    local.set 9
    local.get 8
    local.get 9
    i32.lt_s
    local.set 10
    i32.const 1
    local.set 11
    local.get 10
    local.get 11
    i32.and
    local.set 12
    block  ;; label = @1
      block  ;; label = @2
        local.get 12
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1024
        local.set 13
        global.get $__tls_base
        local.set 14
        local.get 14
        local.get 13
        i32.add
        local.set 15
        i32.const 28
        local.set 16
        local.get 15
        local.get 16
        i32.store
        i32.const -1
        local.set 17
        local.get 5
        local.get 17
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 5
      i32.load offset=24
      local.set 18
      local.get 5
      i32.load offset=20
      local.set 19
      local.get 5
      i32.load offset=16
      local.set 20
      i32.const 12
      local.set 21
      local.get 5
      local.get 21
      i32.add
      local.set 22
      local.get 22
      local.set 23
      local.get 18
      local.get 19
      local.get 20
      local.get 23
      call $__wasi_fd_write
      local.set 24
      local.get 5
      local.get 24
      i32.store16 offset=10
      local.get 5
      i32.load16_u offset=10
      local.set 25
      i32.const 65535
      local.set 26
      local.get 25
      local.get 26
      i32.and
      local.set 27
      block  ;; label = @2
        local.get 27
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load16_u offset=10
        local.set 28
        i32.const 65535
        local.set 29
        local.get 28
        local.get 29
        i32.and
        local.set 30
        i32.const 1024
        local.set 31
        global.get $__tls_base
        local.set 32
        local.get 32
        local.get 31
        i32.add
        local.set 33
        local.get 33
        local.get 30
        i32.store
        i32.const -1
        local.set 34
        local.get 5
        local.get 34
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 5
      i32.load offset=12
      local.set 35
      local.get 5
      local.get 35
      i32.store offset=28
    end
    local.get 5
    i32.load offset=28
    local.set 36
    i32.const 32
    local.set 37
    local.get 5
    local.get 37
    i32.add
    local.set 38
    local.get 38
    global.set $__stack_pointer
    local.get 36
    return)
  (func $__stdio_write (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 48
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store offset=40
    local.get 5
    local.get 1
    i32.store offset=36
    local.get 5
    local.get 2
    i32.store offset=32
    local.get 5
    i32.load offset=40
    local.set 6
    local.get 6
    i32.load offset=24
    local.set 7
    local.get 5
    local.get 7
    i32.store offset=16
    local.get 5
    i32.load offset=40
    local.set 8
    local.get 8
    i32.load offset=20
    local.set 9
    local.get 5
    i32.load offset=40
    local.set 10
    local.get 10
    i32.load offset=24
    local.set 11
    local.get 9
    local.get 11
    i32.sub
    local.set 12
    local.get 5
    local.get 12
    i32.store offset=20
    local.get 5
    i32.load offset=36
    local.set 13
    local.get 5
    local.get 13
    i32.store offset=24
    local.get 5
    i32.load offset=32
    local.set 14
    local.get 5
    local.get 14
    i32.store offset=28
    i32.const 16
    local.set 15
    local.get 5
    local.get 15
    i32.add
    local.set 16
    local.get 16
    local.set 17
    local.get 5
    local.get 17
    i32.store offset=12
    local.get 5
    i32.load offset=12
    local.set 18
    local.get 18
    i32.load offset=4
    local.set 19
    local.get 5
    i32.load offset=12
    local.set 20
    local.get 20
    i32.load offset=12
    local.set 21
    local.get 19
    local.get 21
    i32.add
    local.set 22
    local.get 5
    local.get 22
    i32.store offset=8
    i32.const 2
    local.set 23
    local.get 5
    local.get 23
    i32.store offset=4
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        i32.load offset=40
        local.set 24
        local.get 24
        i32.load offset=56
        local.set 25
        local.get 5
        i32.load offset=12
        local.set 26
        local.get 5
        i32.load offset=4
        local.set 27
        local.get 25
        local.get 26
        local.get 27
        call $writev
        local.set 28
        local.get 5
        local.get 28
        i32.store
        local.get 5
        i32.load
        local.set 29
        local.get 5
        i32.load offset=8
        local.set 30
        local.get 29
        local.set 31
        local.get 30
        local.set 32
        local.get 31
        local.get 32
        i32.eq
        local.set 33
        i32.const 1
        local.set 34
        local.get 33
        local.get 34
        i32.and
        local.set 35
        block  ;; label = @3
          local.get 35
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          i32.load offset=40
          local.set 36
          local.get 36
          i32.load offset=40
          local.set 37
          local.get 5
          i32.load offset=40
          local.set 38
          local.get 38
          i32.load offset=44
          local.set 39
          local.get 37
          local.get 39
          i32.add
          local.set 40
          local.get 5
          i32.load offset=40
          local.set 41
          local.get 41
          local.get 40
          i32.store offset=16
          local.get 5
          i32.load offset=40
          local.set 42
          local.get 42
          i32.load offset=40
          local.set 43
          local.get 5
          i32.load offset=40
          local.set 44
          local.get 44
          local.get 43
          i32.store offset=24
          local.get 5
          i32.load offset=40
          local.set 45
          local.get 45
          local.get 43
          i32.store offset=20
          local.get 5
          i32.load offset=32
          local.set 46
          local.get 5
          local.get 46
          i32.store offset=44
          br 2 (;@1;)
        end
        local.get 5
        i32.load
        local.set 47
        i32.const 0
        local.set 48
        local.get 47
        local.set 49
        local.get 48
        local.set 50
        local.get 49
        local.get 50
        i32.lt_s
        local.set 51
        i32.const 1
        local.set 52
        local.get 51
        local.get 52
        i32.and
        local.set 53
        block  ;; label = @3
          local.get 53
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          i32.load offset=40
          local.set 54
          i32.const 0
          local.set 55
          local.get 54
          local.get 55
          i32.store offset=16
          local.get 5
          i32.load offset=40
          local.set 56
          i32.const 0
          local.set 57
          local.get 56
          local.get 57
          i32.store offset=24
          local.get 5
          i32.load offset=40
          local.set 58
          i32.const 0
          local.set 59
          local.get 58
          local.get 59
          i32.store offset=20
          local.get 5
          i32.load offset=40
          local.set 60
          local.get 60
          i32.load
          local.set 61
          i32.const 32
          local.set 62
          local.get 61
          local.get 62
          i32.or
          local.set 63
          local.get 60
          local.get 63
          i32.store
          local.get 5
          i32.load offset=4
          local.set 64
          i32.const 2
          local.set 65
          local.get 64
          local.set 66
          local.get 65
          local.set 67
          local.get 66
          local.get 67
          i32.eq
          local.set 68
          i32.const 1
          local.set 69
          local.get 68
          local.get 69
          i32.and
          local.set 70
          block  ;; label = @4
            block  ;; label = @5
              local.get 70
              i32.eqz
              br_if 0 (;@5;)
              i32.const 0
              local.set 71
              local.get 71
              local.set 72
              br 1 (;@4;)
            end
            local.get 5
            i32.load offset=32
            local.set 73
            local.get 5
            i32.load offset=12
            local.set 74
            local.get 74
            i32.load offset=4
            local.set 75
            local.get 73
            local.get 75
            i32.sub
            local.set 76
            local.get 76
            local.set 72
          end
          local.get 72
          local.set 77
          local.get 5
          local.get 77
          i32.store offset=44
          br 2 (;@1;)
        end
        local.get 5
        i32.load
        local.set 78
        local.get 5
        i32.load offset=8
        local.set 79
        local.get 79
        local.get 78
        i32.sub
        local.set 80
        local.get 5
        local.get 80
        i32.store offset=8
        local.get 5
        i32.load
        local.set 81
        local.get 5
        i32.load offset=12
        local.set 82
        local.get 82
        i32.load offset=4
        local.set 83
        local.get 81
        local.set 84
        local.get 83
        local.set 85
        local.get 84
        local.get 85
        i32.gt_u
        local.set 86
        i32.const 1
        local.set 87
        local.get 86
        local.get 87
        i32.and
        local.set 88
        block  ;; label = @3
          local.get 88
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          i32.load offset=12
          local.set 89
          local.get 89
          i32.load offset=4
          local.set 90
          local.get 5
          i32.load
          local.set 91
          local.get 91
          local.get 90
          i32.sub
          local.set 92
          local.get 5
          local.get 92
          i32.store
          local.get 5
          i32.load offset=12
          local.set 93
          i32.const 8
          local.set 94
          local.get 93
          local.get 94
          i32.add
          local.set 95
          local.get 5
          local.get 95
          i32.store offset=12
          local.get 5
          i32.load offset=4
          local.set 96
          i32.const -1
          local.set 97
          local.get 96
          local.get 97
          i32.add
          local.set 98
          local.get 5
          local.get 98
          i32.store offset=4
        end
        local.get 5
        i32.load offset=12
        local.set 99
        local.get 99
        i32.load
        local.set 100
        local.get 5
        i32.load
        local.set 101
        local.get 100
        local.get 101
        i32.add
        local.set 102
        local.get 5
        i32.load offset=12
        local.set 103
        local.get 103
        local.get 102
        i32.store
        local.get 5
        i32.load
        local.set 104
        local.get 5
        i32.load offset=12
        local.set 105
        local.get 105
        i32.load offset=4
        local.set 106
        local.get 106
        local.get 104
        i32.sub
        local.set 107
        local.get 105
        local.get 107
        i32.store offset=4
        br 0 (;@2;)
      end
    end
    local.get 5
    i32.load offset=44
    local.set 108
    i32.const 48
    local.set 109
    local.get 5
    local.get 109
    i32.add
    local.set 110
    local.get 110
    global.set $__stack_pointer
    local.get 108
    return)
  (func $__isatty (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 48
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=40
    local.get 3
    i32.load offset=40
    local.set 4
    i32.const 16
    local.set 5
    local.get 3
    local.get 5
    i32.add
    local.set 6
    local.get 6
    local.set 7
    local.get 4
    local.get 7
    call $__wasi_fd_fdstat_get
    local.set 8
    i32.const 65535
    local.set 9
    local.get 8
    local.get 9
    i32.and
    local.set 10
    local.get 3
    local.get 10
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 11
    block  ;; label = @1
      block  ;; label = @2
        local.get 11
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=12
        local.set 12
        i32.const 1024
        local.set 13
        global.get $__tls_base
        local.set 14
        local.get 14
        local.get 13
        i32.add
        local.set 15
        local.get 15
        local.get 12
        i32.store
        i32.const 0
        local.set 16
        local.get 3
        local.get 16
        i32.store offset=44
        br 1 (;@1;)
      end
      local.get 3
      i32.load8_u offset=16
      local.set 17
      i32.const 255
      local.set 18
      local.get 17
      local.get 18
      i32.and
      local.set 19
      i32.const 2
      local.set 20
      local.get 19
      local.set 21
      local.get 20
      local.set 22
      local.get 21
      local.get 22
      i32.ne
      local.set 23
      i32.const 1
      local.set 24
      local.get 23
      local.get 24
      i32.and
      local.set 25
      block  ;; label = @2
        block  ;; label = @3
          local.get 25
          br_if 0 (;@3;)
          local.get 3
          i64.load offset=24
          local.set 26
          i64.const 36
          local.set 27
          local.get 26
          local.get 27
          i64.and
          local.set 28
          i64.const 0
          local.set 29
          local.get 28
          local.set 30
          local.get 29
          local.set 31
          local.get 30
          local.get 31
          i64.ne
          local.set 32
          i32.const 1
          local.set 33
          local.get 32
          local.get 33
          i32.and
          local.set 34
          local.get 34
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 1024
        local.set 35
        global.get $__tls_base
        local.set 36
        local.get 36
        local.get 35
        i32.add
        local.set 37
        i32.const 59
        local.set 38
        local.get 37
        local.get 38
        i32.store
        i32.const 0
        local.set 39
        local.get 3
        local.get 39
        i32.store offset=44
        br 1 (;@1;)
      end
      i32.const 1
      local.set 40
      local.get 3
      local.get 40
      i32.store offset=44
    end
    local.get 3
    i32.load offset=44
    local.set 41
    i32.const 48
    local.set 42
    local.get 3
    local.get 42
    i32.add
    local.set 43
    local.get 43
    global.set $__stack_pointer
    local.get 41
    return)
  (func $__stdout_write (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    local.get 5
    local.get 2
    i32.store offset=4
    local.get 5
    i32.load offset=12
    local.set 6
    i32.const 4
    local.set 7
    local.get 6
    local.get 7
    i32.store offset=32
    local.get 5
    i32.load offset=12
    local.set 8
    local.get 8
    i32.load
    local.set 9
    i32.const 64
    local.set 10
    local.get 9
    local.get 10
    i32.and
    local.set 11
    block  ;; label = @1
      local.get 11
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=12
      local.set 12
      local.get 12
      i32.load offset=56
      local.set 13
      local.get 13
      call $__isatty
      local.set 14
      local.get 14
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=12
      local.set 15
      i32.const -1
      local.set 16
      local.get 15
      local.get 16
      i32.store offset=72
    end
    local.get 5
    i32.load offset=12
    local.set 17
    local.get 5
    i32.load offset=8
    local.set 18
    local.get 5
    i32.load offset=4
    local.set 19
    local.get 17
    local.get 18
    local.get 19
    call $__stdio_write
    local.set 20
    i32.const 16
    local.set 21
    local.get 5
    local.get 21
    i32.add
    local.set 22
    local.get 22
    global.set $__stack_pointer
    local.get 20
    return)
  (func $__lseek (type 3) (param i32 i64 i32) (result i64)
    (local i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 48
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store offset=36
    local.get 5
    local.get 1
    i64.store offset=24
    local.get 5
    local.get 2
    i32.store offset=20
    local.get 5
    i32.load offset=36
    local.set 6
    local.get 5
    i64.load offset=24
    local.set 7
    local.get 5
    i32.load offset=20
    local.set 8
    i32.const 8
    local.set 9
    local.get 5
    local.get 9
    i32.add
    local.set 10
    local.get 10
    local.set 11
    i32.const 255
    local.set 12
    local.get 8
    local.get 12
    i32.and
    local.set 13
    local.get 6
    local.get 7
    local.get 13
    local.get 11
    call $__wasi_fd_seek
    local.set 14
    local.get 5
    local.get 14
    i32.store16 offset=6
    local.get 5
    i32.load16_u offset=6
    local.set 15
    i32.const 65535
    local.set 16
    local.get 15
    local.get 16
    i32.and
    local.set 17
    block  ;; label = @1
      block  ;; label = @2
        local.get 17
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load16_u offset=6
        local.set 18
        i32.const 65535
        local.set 19
        local.get 18
        local.get 19
        i32.and
        local.set 20
        i32.const 76
        local.set 21
        local.get 20
        local.set 22
        local.get 21
        local.set 23
        local.get 22
        local.get 23
        i32.eq
        local.set 24
        i32.const 1
        local.set 25
        local.get 24
        local.get 25
        i32.and
        local.set 26
        block  ;; label = @3
          block  ;; label = @4
            local.get 26
            i32.eqz
            br_if 0 (;@4;)
            i32.const 70
            local.set 27
            local.get 27
            local.set 28
            br 1 (;@3;)
          end
          local.get 5
          i32.load16_u offset=6
          local.set 29
          i32.const 65535
          local.set 30
          local.get 29
          local.get 30
          i32.and
          local.set 31
          local.get 31
          local.set 28
        end
        local.get 28
        local.set 32
        i32.const 1024
        local.set 33
        global.get $__tls_base
        local.set 34
        local.get 34
        local.get 33
        i32.add
        local.set 35
        local.get 35
        local.get 32
        i32.store
        i64.const -1
        local.set 36
        local.get 5
        local.get 36
        i64.store offset=40
        br 1 (;@1;)
      end
      local.get 5
      i64.load offset=8
      local.set 37
      local.get 5
      local.get 37
      i64.store offset=40
    end
    local.get 5
    i64.load offset=40
    local.set 38
    i32.const 48
    local.set 39
    local.get 5
    local.get 39
    i32.add
    local.set 40
    local.get 40
    global.set $__stack_pointer
    local.get 38
    return)
  (func $__stdio_seek (type 3) (param i32 i64 i32) (result i64)
    (local i32 i32 i32 i32 i32 i64 i32 i64 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 32
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store offset=28
    local.get 5
    local.get 1
    i64.store offset=16
    local.get 5
    local.get 2
    i32.store offset=12
    local.get 5
    i32.load offset=28
    local.set 6
    local.get 6
    i32.load offset=56
    local.set 7
    local.get 5
    i64.load offset=16
    local.set 8
    local.get 5
    i32.load offset=12
    local.set 9
    local.get 7
    local.get 8
    local.get 9
    call $__lseek
    local.set 10
    i32.const 32
    local.set 11
    local.get 5
    local.get 11
    i32.add
    local.set 12
    local.get 12
    global.set $__stack_pointer
    local.get 10
    return)
  (func $__lockfile (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    i32.load offset=8
    local.set 4
    local.get 4
    i32.load offset=68
    local.set 5
    local.get 3
    local.get 5
    i32.store offset=4
    call $__get_tp.1
    local.set 6
    local.get 6
    i32.load offset=20
    local.set 7
    local.get 3
    local.get 7
    i32.store
    local.get 3
    i32.load offset=4
    local.set 8
    i32.const -1073741825
    local.set 9
    local.get 8
    local.get 9
    i32.and
    local.set 10
    local.get 3
    i32.load
    local.set 11
    local.get 10
    local.set 12
    local.get 11
    local.set 13
    local.get 12
    local.get 13
    i32.eq
    local.set 14
    i32.const 1
    local.set 15
    local.get 14
    local.get 15
    i32.and
    local.set 16
    block  ;; label = @1
      block  ;; label = @2
        local.get 16
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 17
        local.get 3
        local.get 17
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=8
      local.set 18
      local.get 3
      i32.load
      local.set 19
      i32.const 0
      local.set 20
      local.get 18
      local.get 20
      local.get 19
      i32.atomic.rmw.cmpxchg offset=68
      local.set 21
      local.get 21
      i32.eqz
      drop
      local.get 3
      local.get 21
      i32.store offset=4
      local.get 3
      i32.load offset=4
      local.set 22
      block  ;; label = @2
        local.get 22
        br_if 0 (;@2;)
        i32.const 1
        local.set 23
        local.get 3
        local.get 23
        i32.store offset=12
        br 1 (;@1;)
      end
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load offset=8
          local.set 24
          local.get 3
          i32.load
          local.set 25
          i32.const 1073741824
          local.set 26
          local.get 25
          local.get 26
          i32.or
          local.set 27
          i32.const 0
          local.set 28
          local.get 24
          local.get 28
          local.get 27
          i32.atomic.rmw.cmpxchg offset=68
          local.set 29
          local.get 29
          i32.eqz
          drop
          local.get 3
          local.get 29
          i32.store offset=4
          local.get 29
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=4
          local.set 30
          i32.const 1073741824
          local.set 31
          local.get 30
          local.get 31
          i32.and
          local.set 32
          block  ;; label = @4
            block  ;; label = @5
              local.get 32
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=8
              local.set 33
              local.get 3
              i32.load offset=4
              local.set 34
              i32.const 1073741824
              local.set 35
              local.get 34
              local.get 35
              i32.or
              local.set 36
              local.get 33
              local.get 34
              local.get 36
              i32.atomic.rmw.cmpxchg offset=68
              local.set 37
              local.get 37
              local.get 34
              i32.eq
              drop
              local.get 3
              i32.load offset=4
              local.set 38
              local.get 37
              local.set 39
              local.get 38
              local.set 40
              local.get 39
              local.get 40
              i32.eq
              local.set 41
              i32.const 1
              local.set 42
              local.get 41
              local.get 42
              i32.and
              local.set 43
              local.get 43
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 3
            i32.load offset=8
            local.set 44
            i32.const 68
            local.set 45
            local.get 44
            local.get 45
            i32.add
            local.set 46
            local.get 3
            i32.load offset=4
            local.set 47
            i32.const 1073741824
            local.set 48
            local.get 47
            local.get 48
            i32.or
            local.set 49
            i32.const 1
            local.set 50
            local.get 46
            local.get 49
            local.get 50
            call $__futexwait
          end
          br 0 (;@3;)
        end
      end
      i32.const 1
      local.set 51
      local.get 3
      local.get 51
      i32.store offset=12
    end
    local.get 3
    i32.load offset=12
    local.set 52
    i32.const 16
    local.set 53
    local.get 3
    local.get 53
    i32.add
    local.set 54
    local.get 54
    global.set $__stack_pointer
    local.get 52
    return)
  (func $__get_tp.1 (type 5) (result i32)
    (local i32 i32 i32)
    i32.const 1028
    local.set 0
    global.get $__tls_base
    local.set 1
    local.get 1
    local.get 0
    i32.add
    local.set 2
    local.get 2
    return)
  (func $__futexwait (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    local.get 5
    local.get 2
    i32.store offset=4
    local.get 5
    i32.load offset=12
    local.set 6
    local.get 5
    i32.load offset=8
    local.set 7
    local.get 5
    i32.load offset=4
    local.set 8
    i32.const 0
    local.set 9
    local.get 6
    local.get 9
    local.get 7
    local.get 8
    call $__wait
    i32.const 16
    local.set 10
    local.get 5
    local.get 10
    i32.add
    local.set 11
    local.get 11
    global.set $__stack_pointer
    return)
  (func $__unlockfile (type 8) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    i32.const 68
    local.set 5
    local.get 4
    local.get 5
    i32.add
    local.set 6
    i32.const 0
    local.set 7
    local.get 6
    local.get 7
    call $a_swap
    local.set 8
    i32.const 1073741824
    local.set 9
    local.get 8
    local.get 9
    i32.and
    local.set 10
    block  ;; label = @1
      local.get 10
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.set 11
      i32.const 68
      local.set 12
      local.get 11
      local.get 12
      i32.add
      local.set 13
      i32.const 1
      local.set 14
      local.get 13
      local.get 14
      local.get 14
      call $__wake
    end
    i32.const 16
    local.set 15
    local.get 3
    local.get 15
    i32.add
    local.set 16
    local.get 16
    global.set $__stack_pointer
    return)
  (func $a_swap (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    loop  ;; label = @1
      local.get 4
      i32.load offset=12
      local.set 5
      local.get 5
      i32.load
      local.set 6
      local.get 4
      local.get 6
      i32.store offset=4
      local.get 4
      i32.load offset=12
      local.set 7
      local.get 4
      i32.load offset=4
      local.set 8
      local.get 4
      i32.load offset=8
      local.set 9
      local.get 7
      local.get 8
      local.get 9
      i32.atomic.rmw.cmpxchg
      local.set 10
      local.get 10
      local.get 8
      i32.eq
      drop
      local.get 4
      i32.load offset=4
      local.set 11
      local.get 10
      local.set 12
      local.get 11
      local.set 13
      local.get 12
      local.get 13
      i32.ne
      local.set 14
      i32.const 1
      local.set 15
      local.get 14
      local.get 15
      i32.and
      local.set 16
      local.get 16
      br_if 0 (;@1;)
    end
    local.get 4
    i32.load offset=4
    local.set 17
    local.get 17
    return)
  (func $__wake (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    local.get 0
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    local.get 5
    local.get 2
    i32.store offset=4
    local.get 5
    i32.load offset=4
    local.set 6
    block  ;; label = @1
      local.get 6
      i32.eqz
      br_if 0 (;@1;)
      i32.const 128
      local.set 7
      local.get 5
      local.get 7
      i32.store offset=4
    end
    local.get 5
    i32.load offset=8
    local.set 8
    i32.const 0
    local.set 9
    local.get 8
    local.set 10
    local.get 9
    local.set 11
    local.get 10
    local.get 11
    i32.lt_s
    local.set 12
    i32.const 1
    local.set 13
    local.get 12
    local.get 13
    i32.and
    local.set 14
    block  ;; label = @1
      local.get 14
      i32.eqz
      br_if 0 (;@1;)
      i32.const 2147483647
      local.set 15
      local.get 5
      local.get 15
      i32.store offset=8
    end
    local.get 5
    i32.load offset=12
    local.set 16
    local.get 5
    i32.load offset=8
    local.set 17
    local.get 16
    local.get 17
    memory.atomic.notify
    drop
    return)
  (func $__ofl_lock (type 5) (result i32)
    (local i32 i32)
    i32.const 4968
    local.set 0
    local.get 0
    call $__lock
    i32.const 4972
    local.set 1
    local.get 1
    return)
  (func $__stdio_exit (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 0
    i32.const 16
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    call $__ofl_lock
    local.set 3
    local.get 3
    i32.load
    local.set 4
    local.get 2
    local.get 4
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=12
        local.set 5
        i32.const 0
        local.set 6
        local.get 5
        local.set 7
        local.get 6
        local.set 8
        local.get 7
        local.get 8
        i32.ne
        local.set 9
        i32.const 1
        local.set 10
        local.get 9
        local.get 10
        i32.and
        local.set 11
        local.get 11
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=12
        local.set 12
        local.get 12
        call $close_file
        local.get 2
        i32.load offset=12
        local.set 13
        local.get 13
        i32.load offset=52
        local.set 14
        local.get 2
        local.get 14
        i32.store offset=12
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.set 15
    local.get 15
    i32.load offset=4976
    local.set 16
    local.get 16
    call $close_file
    i32.const 0
    local.set 17
    local.get 17
    i32.load offset=3744
    local.set 18
    local.get 18
    call $close_file
    i32.const 0
    local.set 19
    local.get 19
    i32.load offset=3880
    local.set 20
    local.get 20
    call $close_file
    i32.const 16
    local.set 21
    local.get 2
    local.get 21
    i32.add
    local.set 22
    local.get 22
    global.set $__stack_pointer
    return)
  (func $close_file (type 8) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    i32.const 0
    local.set 5
    local.get 4
    local.set 6
    local.get 5
    local.set 7
    local.get 6
    local.get 7
    i32.ne
    local.set 8
    i32.const 1
    local.set 9
    local.get 8
    local.get 9
    i32.and
    local.set 10
    block  ;; label = @1
      block  ;; label = @2
        local.get 10
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=12
      local.set 11
      local.get 11
      i32.load offset=68
      local.set 12
      i32.const 0
      local.set 13
      local.get 12
      local.set 14
      local.get 13
      local.set 15
      local.get 14
      local.get 15
      i32.ge_s
      local.set 16
      i32.const 1
      local.set 17
      local.get 16
      local.get 17
      i32.and
      local.set 18
      block  ;; label = @2
        block  ;; label = @3
          local.get 18
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=12
          local.set 19
          local.get 19
          call $__lockfile
          drop
          br 1 (;@2;)
        end
      end
      local.get 3
      i32.load offset=12
      local.set 20
      local.get 20
      i32.load offset=20
      local.set 21
      local.get 3
      i32.load offset=12
      local.set 22
      local.get 22
      i32.load offset=24
      local.set 23
      local.get 21
      local.set 24
      local.get 23
      local.set 25
      local.get 24
      local.get 25
      i32.ne
      local.set 26
      i32.const 1
      local.set 27
      local.get 26
      local.get 27
      i32.and
      local.set 28
      block  ;; label = @2
        local.get 28
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=12
        local.set 29
        local.get 29
        i32.load offset=32
        local.set 30
        local.get 3
        i32.load offset=12
        local.set 31
        i32.const 0
        local.set 32
        local.get 31
        local.get 32
        local.get 32
        local.get 30
        call_indirect (type 2)
        drop
      end
      local.get 3
      i32.load offset=12
      local.set 33
      local.get 33
      i32.load offset=4
      local.set 34
      local.get 3
      i32.load offset=12
      local.set 35
      local.get 35
      i32.load offset=8
      local.set 36
      local.get 34
      local.set 37
      local.get 36
      local.set 38
      local.get 37
      local.get 38
      i32.ne
      local.set 39
      i32.const 1
      local.set 40
      local.get 39
      local.get 40
      i32.and
      local.set 41
      local.get 41
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.set 42
      local.get 42
      i32.load offset=36
      local.set 43
      local.get 3
      i32.load offset=12
      local.set 44
      local.get 3
      i32.load offset=12
      local.set 45
      local.get 45
      i32.load offset=4
      local.set 46
      local.get 3
      i32.load offset=12
      local.set 47
      local.get 47
      i32.load offset=8
      local.set 48
      local.get 46
      local.get 48
      i32.sub
      local.set 49
      local.get 49
      local.set 50
      local.get 50
      i64.extend_i32_s
      local.set 51
      i32.const 1
      local.set 52
      local.get 44
      local.get 51
      local.get 52
      local.get 43
      call_indirect (type 3)
      drop
    end
    i32.const 16
    local.set 53
    local.get 3
    local.get 53
    i32.add
    local.set 54
    local.get 54
    global.set $__stack_pointer
    return)
  (func $__towrite (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    i32.load offset=8
    local.set 4
    local.get 4
    i32.load offset=64
    local.set 5
    i32.const 1
    local.set 6
    local.get 5
    local.get 6
    i32.sub
    local.set 7
    local.get 3
    i32.load offset=8
    local.set 8
    local.get 8
    i32.load offset=64
    local.set 9
    local.get 9
    local.get 7
    i32.or
    local.set 10
    local.get 8
    local.get 10
    i32.store offset=64
    local.get 3
    i32.load offset=8
    local.set 11
    local.get 11
    i32.load
    local.set 12
    i32.const 8
    local.set 13
    local.get 12
    local.get 13
    i32.and
    local.set 14
    block  ;; label = @1
      block  ;; label = @2
        local.get 14
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=8
        local.set 15
        local.get 15
        i32.load
        local.set 16
        i32.const 32
        local.set 17
        local.get 16
        local.get 17
        i32.or
        local.set 18
        local.get 15
        local.get 18
        i32.store
        i32.const -1
        local.set 19
        local.get 3
        local.get 19
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=8
      local.set 20
      i32.const 0
      local.set 21
      local.get 20
      local.get 21
      i32.store offset=8
      local.get 3
      i32.load offset=8
      local.set 22
      i32.const 0
      local.set 23
      local.get 22
      local.get 23
      i32.store offset=4
      local.get 3
      i32.load offset=8
      local.set 24
      local.get 24
      i32.load offset=40
      local.set 25
      local.get 3
      i32.load offset=8
      local.set 26
      local.get 26
      local.get 25
      i32.store offset=24
      local.get 3
      i32.load offset=8
      local.set 27
      local.get 27
      local.get 25
      i32.store offset=20
      local.get 3
      i32.load offset=8
      local.set 28
      local.get 28
      i32.load offset=40
      local.set 29
      local.get 3
      i32.load offset=8
      local.set 30
      local.get 30
      i32.load offset=44
      local.set 31
      local.get 29
      local.get 31
      i32.add
      local.set 32
      local.get 3
      i32.load offset=8
      local.set 33
      local.get 33
      local.get 32
      i32.store offset=16
      i32.const 0
      local.set 34
      local.get 3
      local.get 34
      i32.store offset=12
    end
    local.get 3
    i32.load offset=12
    local.set 35
    local.get 35
    return)
  (func $isdigit (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    i32.const 48
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    i32.const 10
    local.set 7
    local.get 6
    local.set 8
    local.get 7
    local.set 9
    local.get 8
    local.get 9
    i32.lt_u
    local.set 10
    i32.const 1
    local.set 11
    local.get 10
    local.get 11
    i32.and
    local.set 12
    local.get 12
    return)
  (func $dummy.2 (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    i32.load offset=12
    local.set 5
    local.get 5
    return)
  (func $__lctrans (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    i32.load offset=12
    local.set 5
    local.get 4
    i32.load offset=8
    local.set 6
    i32.const 8
    local.set 7
    local.get 5
    local.get 6
    local.get 7
    call_indirect (type 4)
    local.set 8
    i32.const 16
    local.set 9
    local.get 4
    local.get 9
    i32.add
    local.set 10
    local.get 10
    global.set $__stack_pointer
    local.get 8
    return)
  (func $__strerror_l (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    i32.load offset=12
    local.set 5
    i32.const 77
    local.set 6
    local.get 5
    local.set 7
    local.get 6
    local.set 8
    local.get 7
    local.get 8
    i32.ge_u
    local.set 9
    i32.const 1
    local.set 10
    local.get 9
    local.get 10
    i32.and
    local.set 11
    block  ;; label = @1
      local.get 11
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 12
      local.get 4
      local.get 12
      i32.store offset=12
    end
    local.get 4
    i32.load offset=12
    local.set 13
    i32.const 2688
    local.set 14
    i32.const 1
    local.set 15
    local.get 13
    local.get 15
    i32.shl
    local.set 16
    local.get 14
    local.get 16
    i32.add
    local.set 17
    local.get 17
    i32.load16_u
    local.set 18
    i32.const 65535
    local.set 19
    local.get 18
    local.get 19
    i32.and
    local.set 20
    i32.const 1136
    local.set 21
    local.get 21
    local.get 20
    i32.add
    local.set 22
    local.get 4
    local.get 22
    i32.store offset=4
    local.get 4
    i32.load offset=4
    local.set 23
    local.get 4
    i32.load offset=8
    local.set 24
    local.get 24
    i32.load offset=20
    local.set 25
    local.get 23
    local.get 25
    call $__lctrans
    local.set 26
    i32.const 16
    local.set 27
    local.get 4
    local.get 27
    i32.add
    local.set 28
    local.get 28
    global.set $__stack_pointer
    local.get 26
    return)
  (func $strerror (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    call $__get_tp.2
    local.set 5
    local.get 5
    i32.load offset=92
    local.set 6
    local.get 4
    local.get 6
    call $__strerror_l
    local.set 7
    i32.const 16
    local.set 8
    local.get 3
    local.get 8
    i32.add
    local.set 9
    local.get 9
    global.set $__stack_pointer
    local.get 7
    return)
  (func $__get_tp.2 (type 5) (result i32)
    (local i32 i32 i32)
    i32.const 1028
    local.set 0
    global.get $__tls_base
    local.set 1
    local.get 1
    local.get 0
    i32.add
    local.set 2
    local.get 2
    return)
  (func $wcrtomb (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store offset=8
    local.get 5
    local.get 1
    i32.store offset=4
    local.get 5
    local.get 2
    i32.store
    local.get 5
    i32.load offset=8
    local.set 6
    i32.const 0
    local.set 7
    local.get 6
    local.set 8
    local.get 7
    local.set 9
    local.get 8
    local.get 9
    i32.ne
    local.set 10
    i32.const 1
    local.set 11
    local.get 10
    local.get 11
    i32.and
    local.set 12
    block  ;; label = @1
      block  ;; label = @2
        local.get 12
        br_if 0 (;@2;)
        i32.const 1
        local.set 13
        local.get 5
        local.get 13
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 5
      i32.load offset=4
      local.set 14
      i32.const 128
      local.set 15
      local.get 14
      local.set 16
      local.get 15
      local.set 17
      local.get 16
      local.get 17
      i32.lt_u
      local.set 18
      i32.const 1
      local.set 19
      local.get 18
      local.get 19
      i32.and
      local.set 20
      block  ;; label = @2
        local.get 20
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=4
        local.set 21
        local.get 5
        i32.load offset=8
        local.set 22
        local.get 22
        local.get 21
        i32.store8
        i32.const 1
        local.set 23
        local.get 5
        local.get 23
        i32.store offset=12
        br 1 (;@1;)
      end
      call $__get_tp.3
      local.set 24
      local.get 24
      i32.load offset=92
      local.set 25
      local.get 25
      i32.load
      local.set 26
      i32.const 0
      local.set 27
      local.get 26
      local.set 28
      local.get 27
      local.set 29
      local.get 28
      local.get 29
      i32.ne
      local.set 30
      i32.const -1
      local.set 31
      local.get 30
      local.get 31
      i32.xor
      local.set 32
      i32.const -1
      local.set 33
      local.get 32
      local.get 33
      i32.xor
      local.set 34
      i32.const 4
      local.set 35
      i32.const 1
      local.set 36
      i32.const 1
      local.set 37
      local.get 34
      local.get 37
      i32.and
      local.set 38
      local.get 35
      local.get 36
      local.get 38
      select
      local.set 39
      i32.const 1
      local.set 40
      local.get 39
      local.set 41
      local.get 40
      local.set 42
      local.get 41
      local.get 42
      i32.eq
      local.set 43
      i32.const 1
      local.set 44
      local.get 43
      local.get 44
      i32.and
      local.set 45
      block  ;; label = @2
        local.get 45
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=4
        local.set 46
        i32.const 57216
        local.set 47
        local.get 46
        local.get 47
        i32.sub
        local.set 48
        i32.const 128
        local.set 49
        local.get 48
        local.set 50
        local.get 49
        local.set 51
        local.get 50
        local.get 51
        i32.lt_u
        local.set 52
        i32.const 1
        local.set 53
        local.get 52
        local.get 53
        i32.and
        local.set 54
        block  ;; label = @3
          local.get 54
          br_if 0 (;@3;)
          i32.const 1024
          local.set 55
          global.get $__tls_base
          local.set 56
          local.get 56
          local.get 55
          i32.add
          local.set 57
          i32.const 25
          local.set 58
          local.get 57
          local.get 58
          i32.store
          i32.const -1
          local.set 59
          local.get 5
          local.get 59
          i32.store offset=12
          br 2 (;@1;)
        end
        local.get 5
        i32.load offset=4
        local.set 60
        local.get 5
        i32.load offset=8
        local.set 61
        local.get 61
        local.get 60
        i32.store8
        i32.const 1
        local.set 62
        local.get 5
        local.get 62
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 5
      i32.load offset=4
      local.set 63
      i32.const 2048
      local.set 64
      local.get 63
      local.set 65
      local.get 64
      local.set 66
      local.get 65
      local.get 66
      i32.lt_u
      local.set 67
      i32.const 1
      local.set 68
      local.get 67
      local.get 68
      i32.and
      local.set 69
      block  ;; label = @2
        local.get 69
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=4
        local.set 70
        i32.const 6
        local.set 71
        local.get 70
        local.get 71
        i32.shr_s
        local.set 72
        i32.const 192
        local.set 73
        local.get 72
        local.get 73
        i32.or
        local.set 74
        local.get 5
        i32.load offset=8
        local.set 75
        i32.const 1
        local.set 76
        local.get 75
        local.get 76
        i32.add
        local.set 77
        local.get 5
        local.get 77
        i32.store offset=8
        local.get 75
        local.get 74
        i32.store8
        local.get 5
        i32.load offset=4
        local.set 78
        i32.const 63
        local.set 79
        local.get 78
        local.get 79
        i32.and
        local.set 80
        i32.const 128
        local.set 81
        local.get 80
        local.get 81
        i32.or
        local.set 82
        local.get 5
        i32.load offset=8
        local.set 83
        local.get 83
        local.get 82
        i32.store8
        i32.const 2
        local.set 84
        local.get 5
        local.get 84
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 5
      i32.load offset=4
      local.set 85
      i32.const 55296
      local.set 86
      local.get 85
      local.set 87
      local.get 86
      local.set 88
      local.get 87
      local.get 88
      i32.lt_u
      local.set 89
      i32.const 1
      local.set 90
      local.get 89
      local.get 90
      i32.and
      local.set 91
      block  ;; label = @2
        block  ;; label = @3
          local.get 91
          br_if 0 (;@3;)
          local.get 5
          i32.load offset=4
          local.set 92
          i32.const 57344
          local.set 93
          local.get 92
          local.get 93
          i32.sub
          local.set 94
          i32.const 8192
          local.set 95
          local.get 94
          local.set 96
          local.get 95
          local.set 97
          local.get 96
          local.get 97
          i32.lt_u
          local.set 98
          i32.const 1
          local.set 99
          local.get 98
          local.get 99
          i32.and
          local.set 100
          local.get 100
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 5
        i32.load offset=4
        local.set 101
        i32.const 12
        local.set 102
        local.get 101
        local.get 102
        i32.shr_s
        local.set 103
        i32.const 224
        local.set 104
        local.get 103
        local.get 104
        i32.or
        local.set 105
        local.get 5
        i32.load offset=8
        local.set 106
        i32.const 1
        local.set 107
        local.get 106
        local.get 107
        i32.add
        local.set 108
        local.get 5
        local.get 108
        i32.store offset=8
        local.get 106
        local.get 105
        i32.store8
        local.get 5
        i32.load offset=4
        local.set 109
        i32.const 6
        local.set 110
        local.get 109
        local.get 110
        i32.shr_s
        local.set 111
        i32.const 63
        local.set 112
        local.get 111
        local.get 112
        i32.and
        local.set 113
        i32.const 128
        local.set 114
        local.get 113
        local.get 114
        i32.or
        local.set 115
        local.get 5
        i32.load offset=8
        local.set 116
        i32.const 1
        local.set 117
        local.get 116
        local.get 117
        i32.add
        local.set 118
        local.get 5
        local.get 118
        i32.store offset=8
        local.get 116
        local.get 115
        i32.store8
        local.get 5
        i32.load offset=4
        local.set 119
        i32.const 63
        local.set 120
        local.get 119
        local.get 120
        i32.and
        local.set 121
        i32.const 128
        local.set 122
        local.get 121
        local.get 122
        i32.or
        local.set 123
        local.get 5
        i32.load offset=8
        local.set 124
        local.get 124
        local.get 123
        i32.store8
        i32.const 3
        local.set 125
        local.get 5
        local.get 125
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 5
      i32.load offset=4
      local.set 126
      i32.const 65536
      local.set 127
      local.get 126
      local.get 127
      i32.sub
      local.set 128
      i32.const 1048576
      local.set 129
      local.get 128
      local.set 130
      local.get 129
      local.set 131
      local.get 130
      local.get 131
      i32.lt_u
      local.set 132
      i32.const 1
      local.set 133
      local.get 132
      local.get 133
      i32.and
      local.set 134
      block  ;; label = @2
        local.get 134
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=4
        local.set 135
        i32.const 18
        local.set 136
        local.get 135
        local.get 136
        i32.shr_s
        local.set 137
        i32.const 240
        local.set 138
        local.get 137
        local.get 138
        i32.or
        local.set 139
        local.get 5
        i32.load offset=8
        local.set 140
        i32.const 1
        local.set 141
        local.get 140
        local.get 141
        i32.add
        local.set 142
        local.get 5
        local.get 142
        i32.store offset=8
        local.get 140
        local.get 139
        i32.store8
        local.get 5
        i32.load offset=4
        local.set 143
        i32.const 12
        local.set 144
        local.get 143
        local.get 144
        i32.shr_s
        local.set 145
        i32.const 63
        local.set 146
        local.get 145
        local.get 146
        i32.and
        local.set 147
        i32.const 128
        local.set 148
        local.get 147
        local.get 148
        i32.or
        local.set 149
        local.get 5
        i32.load offset=8
        local.set 150
        i32.const 1
        local.set 151
        local.get 150
        local.get 151
        i32.add
        local.set 152
        local.get 5
        local.get 152
        i32.store offset=8
        local.get 150
        local.get 149
        i32.store8
        local.get 5
        i32.load offset=4
        local.set 153
        i32.const 6
        local.set 154
        local.get 153
        local.get 154
        i32.shr_s
        local.set 155
        i32.const 63
        local.set 156
        local.get 155
        local.get 156
        i32.and
        local.set 157
        i32.const 128
        local.set 158
        local.get 157
        local.get 158
        i32.or
        local.set 159
        local.get 5
        i32.load offset=8
        local.set 160
        i32.const 1
        local.set 161
        local.get 160
        local.get 161
        i32.add
        local.set 162
        local.get 5
        local.get 162
        i32.store offset=8
        local.get 160
        local.get 159
        i32.store8
        local.get 5
        i32.load offset=4
        local.set 163
        i32.const 63
        local.set 164
        local.get 163
        local.get 164
        i32.and
        local.set 165
        i32.const 128
        local.set 166
        local.get 165
        local.get 166
        i32.or
        local.set 167
        local.get 5
        i32.load offset=8
        local.set 168
        local.get 168
        local.get 167
        i32.store8
        i32.const 4
        local.set 169
        local.get 5
        local.get 169
        i32.store offset=12
        br 1 (;@1;)
      end
      i32.const 1024
      local.set 170
      global.get $__tls_base
      local.set 171
      local.get 171
      local.get 170
      i32.add
      local.set 172
      i32.const 25
      local.set 173
      local.get 172
      local.get 173
      i32.store
      i32.const -1
      local.set 174
      local.get 5
      local.get 174
      i32.store offset=12
    end
    local.get 5
    i32.load offset=12
    local.set 175
    i32.const 16
    local.set 176
    local.get 5
    local.get 176
    i32.add
    local.set 177
    local.get 177
    global.set $__stack_pointer
    local.get 175
    return)
  (func $__get_tp.3 (type 5) (result i32)
    (local i32 i32 i32)
    i32.const 1028
    local.set 0
    global.get $__tls_base
    local.set 1
    local.get 1
    local.get 0
    i32.add
    local.set 2
    local.get 2
    return)
  (func $wctomb (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store offset=8
    local.get 4
    local.get 1
    i32.store offset=4
    local.get 4
    i32.load offset=8
    local.set 5
    i32.const 0
    local.set 6
    local.get 5
    local.set 7
    local.get 6
    local.set 8
    local.get 7
    local.get 8
    i32.ne
    local.set 9
    i32.const 1
    local.set 10
    local.get 9
    local.get 10
    i32.and
    local.set 11
    block  ;; label = @1
      block  ;; label = @2
        local.get 11
        br_if 0 (;@2;)
        i32.const 0
        local.set 12
        local.get 4
        local.get 12
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 4
      i32.load offset=8
      local.set 13
      local.get 4
      i32.load offset=4
      local.set 14
      i32.const 0
      local.set 15
      local.get 13
      local.get 14
      local.get 15
      call $wcrtomb
      local.set 16
      local.get 4
      local.get 16
      i32.store offset=12
    end
    local.get 4
    i32.load offset=12
    local.set 17
    i32.const 16
    local.set 18
    local.get 4
    local.get 18
    i32.add
    local.set 19
    local.get 19
    global.set $__stack_pointer
    local.get 17
    return)
  (func $__fwritex (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 32
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store offset=24
    local.get 5
    local.get 1
    i32.store offset=20
    local.get 5
    local.get 2
    i32.store offset=16
    i32.const 0
    local.set 6
    local.get 5
    local.get 6
    i32.store offset=12
    local.get 5
    i32.load offset=16
    local.set 7
    local.get 7
    i32.load offset=16
    local.set 8
    i32.const 0
    local.set 9
    local.get 8
    local.set 10
    local.get 9
    local.set 11
    local.get 10
    local.get 11
    i32.ne
    local.set 12
    i32.const 1
    local.set 13
    local.get 12
    local.get 13
    i32.and
    local.set 14
    block  ;; label = @1
      block  ;; label = @2
        local.get 14
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=16
        local.set 15
        local.get 15
        call $__towrite
        local.set 16
        local.get 16
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 17
        local.get 5
        local.get 17
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 5
      i32.load offset=20
      local.set 18
      local.get 5
      i32.load offset=16
      local.set 19
      local.get 19
      i32.load offset=16
      local.set 20
      local.get 5
      i32.load offset=16
      local.set 21
      local.get 21
      i32.load offset=20
      local.set 22
      local.get 20
      local.get 22
      i32.sub
      local.set 23
      local.get 18
      local.set 24
      local.get 23
      local.set 25
      local.get 24
      local.get 25
      i32.gt_u
      local.set 26
      i32.const 1
      local.set 27
      local.get 26
      local.get 27
      i32.and
      local.set 28
      block  ;; label = @2
        local.get 28
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=16
        local.set 29
        local.get 29
        i32.load offset=32
        local.set 30
        local.get 5
        i32.load offset=16
        local.set 31
        local.get 5
        i32.load offset=24
        local.set 32
        local.get 5
        i32.load offset=20
        local.set 33
        local.get 31
        local.get 32
        local.get 33
        local.get 30
        call_indirect (type 2)
        local.set 34
        local.get 5
        local.get 34
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 5
      i32.load offset=16
      local.set 35
      local.get 35
      i32.load offset=72
      local.set 36
      i32.const 0
      local.set 37
      local.get 36
      local.set 38
      local.get 37
      local.set 39
      local.get 38
      local.get 39
      i32.ge_s
      local.set 40
      i32.const 1
      local.set 41
      local.get 40
      local.get 41
      i32.and
      local.set 42
      block  ;; label = @2
        local.get 42
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=20
        local.set 43
        local.get 5
        local.get 43
        i32.store offset=12
        loop  ;; label = @3
          local.get 5
          i32.load offset=12
          local.set 44
          i32.const 0
          local.set 45
          local.get 45
          local.set 46
          block  ;; label = @4
            local.get 44
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i32.load offset=24
            local.set 47
            local.get 5
            i32.load offset=12
            local.set 48
            i32.const 1
            local.set 49
            local.get 48
            local.get 49
            i32.sub
            local.set 50
            local.get 47
            local.get 50
            i32.add
            local.set 51
            local.get 51
            i32.load8_u
            local.set 52
            i32.const 255
            local.set 53
            local.get 52
            local.get 53
            i32.and
            local.set 54
            i32.const 10
            local.set 55
            local.get 54
            local.set 56
            local.get 55
            local.set 57
            local.get 56
            local.get 57
            i32.ne
            local.set 58
            local.get 58
            local.set 46
          end
          local.get 46
          local.set 59
          i32.const 1
          local.set 60
          local.get 59
          local.get 60
          i32.and
          local.set 61
          block  ;; label = @4
            local.get 61
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i32.load offset=12
            local.set 62
            i32.const -1
            local.set 63
            local.get 62
            local.get 63
            i32.add
            local.set 64
            local.get 5
            local.get 64
            i32.store offset=12
            br 1 (;@3;)
          end
        end
        local.get 5
        i32.load offset=12
        local.set 65
        block  ;; label = @3
          local.get 65
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          i32.load offset=16
          local.set 66
          local.get 66
          i32.load offset=32
          local.set 67
          local.get 5
          i32.load offset=16
          local.set 68
          local.get 5
          i32.load offset=24
          local.set 69
          local.get 5
          i32.load offset=12
          local.set 70
          local.get 68
          local.get 69
          local.get 70
          local.get 67
          call_indirect (type 2)
          local.set 71
          local.get 5
          local.get 71
          i32.store offset=8
          local.get 5
          i32.load offset=8
          local.set 72
          local.get 5
          i32.load offset=12
          local.set 73
          local.get 72
          local.set 74
          local.get 73
          local.set 75
          local.get 74
          local.get 75
          i32.lt_u
          local.set 76
          i32.const 1
          local.set 77
          local.get 76
          local.get 77
          i32.and
          local.set 78
          block  ;; label = @4
            local.get 78
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i32.load offset=8
            local.set 79
            local.get 5
            local.get 79
            i32.store offset=28
            br 3 (;@1;)
          end
          local.get 5
          i32.load offset=12
          local.set 80
          local.get 5
          i32.load offset=24
          local.set 81
          local.get 81
          local.get 80
          i32.add
          local.set 82
          local.get 5
          local.get 82
          i32.store offset=24
          local.get 5
          i32.load offset=12
          local.set 83
          local.get 5
          i32.load offset=20
          local.set 84
          local.get 84
          local.get 83
          i32.sub
          local.set 85
          local.get 5
          local.get 85
          i32.store offset=20
        end
      end
      local.get 5
      i32.load offset=16
      local.set 86
      local.get 86
      i32.load offset=20
      local.set 87
      local.get 5
      i32.load offset=24
      local.set 88
      local.get 5
      i32.load offset=20
      local.set 89
      local.get 87
      local.get 88
      local.get 89
      memory.copy
      local.get 5
      i32.load offset=20
      local.set 90
      local.get 5
      i32.load offset=16
      local.set 91
      local.get 91
      i32.load offset=20
      local.set 92
      local.get 92
      local.get 90
      i32.add
      local.set 93
      local.get 91
      local.get 93
      i32.store offset=20
      local.get 5
      i32.load offset=20
      local.set 94
      local.get 5
      i32.load offset=12
      local.set 95
      local.get 94
      local.get 95
      i32.add
      local.set 96
      local.get 5
      local.get 96
      i32.store offset=28
    end
    local.get 5
    i32.load offset=28
    local.set 97
    i32.const 32
    local.set 98
    local.get 5
    local.get 98
    i32.add
    local.set 99
    local.get 99
    global.set $__stack_pointer
    local.get 97
    return)
  (func $fwrite (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 32
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 6
    local.get 0
    i32.store offset=28
    local.get 6
    local.get 1
    i32.store offset=24
    local.get 6
    local.get 2
    i32.store offset=20
    local.get 6
    local.get 3
    i32.store offset=16
    local.get 6
    i32.load offset=24
    local.set 7
    local.get 6
    i32.load offset=20
    local.set 8
    local.get 7
    local.get 8
    i32.mul
    local.set 9
    local.get 6
    local.get 9
    i32.store offset=8
    local.get 6
    i32.load offset=24
    local.set 10
    block  ;; label = @1
      local.get 10
      br_if 0 (;@1;)
      i32.const 0
      local.set 11
      local.get 6
      local.get 11
      i32.store offset=20
    end
    local.get 6
    i32.load offset=16
    local.set 12
    local.get 12
    i32.load offset=68
    local.set 13
    i32.const 0
    local.set 14
    local.get 13
    local.set 15
    local.get 14
    local.set 16
    local.get 15
    local.get 16
    i32.ge_s
    local.set 17
    i32.const 1
    local.set 18
    local.get 17
    local.get 18
    i32.and
    local.set 19
    block  ;; label = @1
      block  ;; label = @2
        local.get 19
        i32.eqz
        br_if 0 (;@2;)
        local.get 6
        i32.load offset=16
        local.set 20
        local.get 20
        call $__lockfile
        local.set 21
        local.get 21
        local.set 22
        br 1 (;@1;)
      end
      i32.const 0
      local.set 23
      local.get 23
      local.set 22
    end
    local.get 22
    local.set 24
    local.get 6
    local.get 24
    i32.store offset=4
    local.get 6
    i32.load offset=28
    local.set 25
    local.get 6
    i32.load offset=8
    local.set 26
    local.get 6
    i32.load offset=16
    local.set 27
    local.get 25
    local.get 26
    local.get 27
    call $__fwritex
    local.set 28
    local.get 6
    local.get 28
    i32.store offset=12
    local.get 6
    i32.load offset=4
    local.set 29
    block  ;; label = @1
      local.get 29
      i32.eqz
      br_if 0 (;@1;)
      local.get 6
      i32.load offset=16
      local.set 30
      local.get 30
      call $__unlockfile
    end
    local.get 6
    i32.load offset=12
    local.set 31
    local.get 6
    i32.load offset=8
    local.set 32
    local.get 31
    local.set 33
    local.get 32
    local.set 34
    local.get 33
    local.get 34
    i32.eq
    local.set 35
    i32.const 1
    local.set 36
    local.get 35
    local.get 36
    i32.and
    local.set 37
    block  ;; label = @1
      block  ;; label = @2
        local.get 37
        i32.eqz
        br_if 0 (;@2;)
        local.get 6
        i32.load offset=20
        local.set 38
        local.get 38
        local.set 39
        br 1 (;@1;)
      end
      local.get 6
      i32.load offset=12
      local.set 40
      local.get 6
      i32.load offset=24
      local.set 41
      local.get 40
      local.get 41
      i32.div_u
      local.set 42
      local.get 42
      local.set 39
    end
    local.get 39
    local.set 43
    i32.const 32
    local.set 44
    local.get 6
    local.get 44
    i32.add
    local.set 45
    local.get 45
    global.set $__stack_pointer
    local.get 43
    return)
  (func $frexp (type 10) (param f64 i32) (result f64)
    (local i32 i32 i32 f64 i64 i64 i64 i64 i64 i32 i32 f64 i32 f64 i32 i32 i32 f64 f64 f64 i32 f64 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 f64 f64 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 48
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    f64.store offset=32
    local.get 4
    local.get 1
    i32.store offset=28
    local.get 4
    f64.load offset=32
    local.set 5
    local.get 4
    local.get 5
    f64.store offset=16
    local.get 4
    i64.load offset=16
    local.set 6
    i64.const 52
    local.set 7
    local.get 6
    local.get 7
    i64.shr_u
    local.set 8
    i64.const 2047
    local.set 9
    local.get 8
    local.get 9
    i64.and
    local.set 10
    local.get 10
    i32.wrap_i64
    local.set 11
    local.get 4
    local.get 11
    i32.store offset=12
    local.get 4
    i32.load offset=12
    local.set 12
    block  ;; label = @1
      block  ;; label = @2
        local.get 12
        br_if 0 (;@2;)
        local.get 4
        f64.load offset=32
        local.set 13
        i32.const 0
        local.set 14
        local.get 14
        f64.convert_i32_s
        local.set 15
        local.get 13
        local.get 15
        f64.ne
        local.set 16
        i32.const 1
        local.set 17
        local.get 16
        local.get 17
        i32.and
        local.set 18
        block  ;; label = @3
          block  ;; label = @4
            local.get 18
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            f64.load offset=32
            local.set 19
            f64.const 0x1p+64 (;=1.84467e+19;)
            local.set 20
            local.get 19
            local.get 20
            f64.mul
            local.set 21
            local.get 4
            i32.load offset=28
            local.set 22
            local.get 21
            local.get 22
            call $frexp
            local.set 23
            local.get 4
            local.get 23
            f64.store offset=32
            local.get 4
            i32.load offset=28
            local.set 24
            local.get 24
            i32.load
            local.set 25
            i32.const 64
            local.set 26
            local.get 25
            local.get 26
            i32.sub
            local.set 27
            local.get 24
            local.get 27
            i32.store
            br 1 (;@3;)
          end
          local.get 4
          i32.load offset=28
          local.set 28
          i32.const 0
          local.set 29
          local.get 28
          local.get 29
          i32.store
        end
        local.get 4
        f64.load offset=32
        local.set 30
        local.get 4
        local.get 30
        f64.store offset=40
        br 1 (;@1;)
      end
      local.get 4
      i32.load offset=12
      local.set 31
      i32.const 2047
      local.set 32
      local.get 31
      local.set 33
      local.get 32
      local.set 34
      local.get 33
      local.get 34
      i32.eq
      local.set 35
      i32.const 1
      local.set 36
      local.get 35
      local.get 36
      i32.and
      local.set 37
      block  ;; label = @2
        local.get 37
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        f64.load offset=32
        local.set 38
        local.get 4
        local.get 38
        f64.store offset=40
        br 1 (;@1;)
      end
      local.get 4
      i32.load offset=12
      local.set 39
      i32.const 1022
      local.set 40
      local.get 39
      local.get 40
      i32.sub
      local.set 41
      local.get 4
      i32.load offset=28
      local.set 42
      local.get 42
      local.get 41
      i32.store
      local.get 4
      i64.load offset=16
      local.set 43
      i64.const -9218868437227405313
      local.set 44
      local.get 43
      local.get 44
      i64.and
      local.set 45
      local.get 4
      local.get 45
      i64.store offset=16
      local.get 4
      i64.load offset=16
      local.set 46
      i64.const 4602678819172646912
      local.set 47
      local.get 46
      local.get 47
      i64.or
      local.set 48
      local.get 4
      local.get 48
      i64.store offset=16
      local.get 4
      f64.load offset=16
      local.set 49
      local.get 4
      local.get 49
      f64.store offset=40
    end
    local.get 4
    f64.load offset=40
    local.set 50
    i32.const 48
    local.set 51
    local.get 4
    local.get 51
    i32.add
    local.set 52
    local.get 52
    global.set $__stack_pointer
    local.get 50
    return)
  (func $fputs (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    i32.load offset=12
    local.set 5
    local.get 5
    call $strlen
    local.set 6
    local.get 4
    local.get 6
    i32.store offset=4
    local.get 4
    i32.load offset=12
    local.set 7
    local.get 4
    i32.load offset=4
    local.set 8
    local.get 4
    i32.load offset=8
    local.set 9
    i32.const 1
    local.set 10
    local.get 7
    local.get 10
    local.get 8
    local.get 9
    call $fwrite
    local.set 11
    local.get 4
    i32.load offset=4
    local.set 12
    local.get 11
    local.set 13
    local.get 12
    local.set 14
    local.get 13
    local.get 14
    i32.eq
    local.set 15
    i32.const 1
    local.set 16
    local.get 15
    local.get 16
    i32.and
    local.set 17
    i32.const 1
    local.set 18
    local.get 17
    local.get 18
    i32.sub
    local.set 19
    i32.const 16
    local.set 20
    local.get 4
    local.get 20
    i32.add
    local.set 21
    local.get 21
    global.set $__stack_pointer
    local.get 19
    return)
  (func $abort (type 0)
    unreachable
    unreachable)
  (func $vfprintf (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 240
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store offset=232
    local.get 5
    local.get 1
    i32.store offset=228
    local.get 5
    local.get 2
    i32.store offset=224
    i32.const 208
    local.set 6
    local.get 5
    local.get 6
    i32.add
    local.set 7
    i64.const 0
    local.set 8
    local.get 7
    local.get 8
    i64.store
    i32.const 200
    local.set 9
    local.get 5
    local.get 9
    i32.add
    local.set 10
    local.get 10
    local.get 8
    i64.store
    i32.const 192
    local.set 11
    local.get 5
    local.get 11
    i32.add
    local.set 12
    local.get 12
    local.get 8
    i64.store
    local.get 5
    local.get 8
    i64.store offset=184
    local.get 5
    local.get 8
    i64.store offset=176
    i32.const 0
    local.set 13
    local.get 5
    local.get 13
    i32.store offset=12
    local.get 5
    i32.load offset=224
    local.set 14
    local.get 5
    local.get 14
    i32.store offset=220
    local.get 5
    i32.load offset=228
    local.set 15
    i32.const 96
    local.set 16
    local.get 5
    local.get 16
    i32.add
    local.set 17
    local.get 17
    local.set 18
    i32.const 176
    local.set 19
    local.get 5
    local.get 19
    i32.add
    local.set 20
    local.get 20
    local.set 21
    i32.const 0
    local.set 22
    i32.const 220
    local.set 23
    local.get 5
    local.get 23
    i32.add
    local.set 24
    local.get 24
    local.set 25
    local.get 22
    local.get 15
    local.get 25
    local.get 18
    local.get 21
    call $printf_core
    local.set 26
    i32.const 0
    local.set 27
    local.get 26
    local.set 28
    local.get 27
    local.set 29
    local.get 28
    local.get 29
    i32.lt_s
    local.set 30
    i32.const 1
    local.set 31
    local.get 30
    local.get 31
    i32.and
    local.set 32
    block  ;; label = @1
      block  ;; label = @2
        local.get 32
        i32.eqz
        br_if 0 (;@2;)
        i32.const -1
        local.set 33
        local.get 5
        local.get 33
        i32.store offset=236
        br 1 (;@1;)
      end
      local.get 5
      i32.load offset=232
      local.set 34
      local.get 34
      i32.load offset=68
      local.set 35
      i32.const 0
      local.set 36
      local.get 35
      local.set 37
      local.get 36
      local.set 38
      local.get 37
      local.get 38
      i32.ge_s
      local.set 39
      i32.const 1
      local.set 40
      local.get 39
      local.get 40
      i32.and
      local.set 41
      block  ;; label = @2
        block  ;; label = @3
          local.get 41
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          i32.load offset=232
          local.set 42
          local.get 42
          call $__lockfile
          local.set 43
          local.get 43
          local.set 44
          br 1 (;@2;)
        end
        i32.const 0
        local.set 45
        local.get 45
        local.set 44
      end
      local.get 44
      local.set 46
      local.get 5
      local.get 46
      i32.store
      local.get 5
      i32.load offset=232
      local.set 47
      local.get 47
      i32.load
      local.set 48
      i32.const 32
      local.set 49
      local.get 48
      local.get 49
      i32.and
      local.set 50
      local.get 5
      local.get 50
      i32.store offset=8
      local.get 5
      i32.load offset=232
      local.set 51
      local.get 51
      i32.load offset=64
      local.set 52
      i32.const 1
      local.set 53
      local.get 52
      local.set 54
      local.get 53
      local.set 55
      local.get 54
      local.get 55
      i32.lt_s
      local.set 56
      i32.const 1
      local.set 57
      local.get 56
      local.get 57
      i32.and
      local.set 58
      block  ;; label = @2
        local.get 58
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=232
        local.set 59
        local.get 59
        i32.load
        local.set 60
        i32.const -33
        local.set 61
        local.get 60
        local.get 61
        i32.and
        local.set 62
        local.get 59
        local.get 62
        i32.store
      end
      local.get 5
      i32.load offset=232
      local.set 63
      local.get 63
      i32.load offset=44
      local.set 64
      block  ;; label = @2
        local.get 64
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=232
        local.set 65
        local.get 65
        i32.load offset=40
        local.set 66
        local.get 5
        local.get 66
        i32.store offset=12
        i32.const 16
        local.set 67
        local.get 5
        local.get 67
        i32.add
        local.set 68
        local.get 68
        local.set 69
        local.get 5
        i32.load offset=232
        local.set 70
        local.get 70
        local.get 69
        i32.store offset=40
        local.get 5
        i32.load offset=232
        local.set 71
        i32.const 80
        local.set 72
        local.get 71
        local.get 72
        i32.store offset=44
        local.get 5
        i32.load offset=232
        local.set 73
        i32.const 0
        local.set 74
        local.get 73
        local.get 74
        i32.store offset=16
        local.get 5
        i32.load offset=232
        local.set 75
        i32.const 0
        local.set 76
        local.get 75
        local.get 76
        i32.store offset=24
        local.get 5
        i32.load offset=232
        local.set 77
        i32.const 0
        local.set 78
        local.get 77
        local.get 78
        i32.store offset=20
      end
      local.get 5
      i32.load offset=232
      local.set 79
      local.get 79
      i32.load offset=16
      local.set 80
      i32.const 0
      local.set 81
      local.get 80
      local.set 82
      local.get 81
      local.set 83
      local.get 82
      local.get 83
      i32.ne
      local.set 84
      i32.const 1
      local.set 85
      local.get 84
      local.get 85
      i32.and
      local.set 86
      block  ;; label = @2
        block  ;; label = @3
          local.get 86
          br_if 0 (;@3;)
          local.get 5
          i32.load offset=232
          local.set 87
          local.get 87
          call $__towrite
          local.set 88
          local.get 88
          i32.eqz
          br_if 0 (;@3;)
          i32.const -1
          local.set 89
          local.get 5
          local.get 89
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 5
        i32.load offset=232
        local.set 90
        local.get 5
        i32.load offset=228
        local.set 91
        i32.const 96
        local.set 92
        local.get 5
        local.get 92
        i32.add
        local.set 93
        local.get 93
        local.set 94
        i32.const 176
        local.set 95
        local.get 5
        local.get 95
        i32.add
        local.set 96
        local.get 96
        local.set 97
        i32.const 220
        local.set 98
        local.get 5
        local.get 98
        i32.add
        local.set 99
        local.get 99
        local.set 100
        local.get 90
        local.get 91
        local.get 100
        local.get 94
        local.get 97
        call $printf_core
        local.set 101
        local.get 5
        local.get 101
        i32.store offset=4
      end
      local.get 5
      i32.load offset=12
      local.set 102
      i32.const 0
      local.set 103
      local.get 102
      local.set 104
      local.get 103
      local.set 105
      local.get 104
      local.get 105
      i32.ne
      local.set 106
      i32.const 1
      local.set 107
      local.get 106
      local.get 107
      i32.and
      local.set 108
      block  ;; label = @2
        local.get 108
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=232
        local.set 109
        local.get 109
        i32.load offset=32
        local.set 110
        local.get 5
        i32.load offset=232
        local.set 111
        i32.const 0
        local.set 112
        local.get 111
        local.get 112
        local.get 112
        local.get 110
        call_indirect (type 2)
        drop
        local.get 5
        i32.load offset=232
        local.set 113
        local.get 113
        i32.load offset=20
        local.set 114
        i32.const 0
        local.set 115
        local.get 114
        local.set 116
        local.get 115
        local.set 117
        local.get 116
        local.get 117
        i32.ne
        local.set 118
        i32.const 1
        local.set 119
        local.get 118
        local.get 119
        i32.and
        local.set 120
        block  ;; label = @3
          local.get 120
          br_if 0 (;@3;)
          i32.const -1
          local.set 121
          local.get 5
          local.get 121
          i32.store offset=4
        end
        local.get 5
        i32.load offset=12
        local.set 122
        local.get 5
        i32.load offset=232
        local.set 123
        local.get 123
        local.get 122
        i32.store offset=40
        local.get 5
        i32.load offset=232
        local.set 124
        i32.const 0
        local.set 125
        local.get 124
        local.get 125
        i32.store offset=44
        local.get 5
        i32.load offset=232
        local.set 126
        i32.const 0
        local.set 127
        local.get 126
        local.get 127
        i32.store offset=16
        local.get 5
        i32.load offset=232
        local.set 128
        i32.const 0
        local.set 129
        local.get 128
        local.get 129
        i32.store offset=24
        local.get 5
        i32.load offset=232
        local.set 130
        i32.const 0
        local.set 131
        local.get 130
        local.get 131
        i32.store offset=20
      end
      local.get 5
      i32.load offset=232
      local.set 132
      local.get 132
      i32.load
      local.set 133
      i32.const 32
      local.set 134
      local.get 133
      local.get 134
      i32.and
      local.set 135
      block  ;; label = @2
        local.get 135
        i32.eqz
        br_if 0 (;@2;)
        i32.const -1
        local.set 136
        local.get 5
        local.get 136
        i32.store offset=4
      end
      local.get 5
      i32.load offset=8
      local.set 137
      local.get 5
      i32.load offset=232
      local.set 138
      local.get 138
      i32.load
      local.set 139
      local.get 139
      local.get 137
      i32.or
      local.set 140
      local.get 138
      local.get 140
      i32.store
      local.get 5
      i32.load
      local.set 141
      block  ;; label = @2
        local.get 141
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=232
        local.set 142
        local.get 142
        call $__unlockfile
      end
      local.get 5
      i32.load offset=4
      local.set 143
      local.get 5
      local.get 143
      i32.store offset=236
    end
    local.get 5
    i32.load offset=236
    local.set 144
    i32.const 240
    local.set 145
    local.get 5
    local.get 145
    i32.add
    local.set 146
    local.get 146
    global.set $__stack_pointer
    local.get 144
    return)
  (func $printf_core (type 11) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i64 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i32 i32 i32 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 5
    i32.const 160
    local.set 6
    local.get 5
    local.get 6
    i32.sub
    local.set 7
    local.get 7
    global.set $__stack_pointer
    local.get 7
    local.get 0
    i32.store offset=152
    local.get 7
    local.get 1
    i32.store offset=148
    local.get 7
    local.get 2
    i32.store offset=144
    local.get 7
    local.get 3
    i32.store offset=140
    local.get 7
    local.get 4
    i32.store offset=136
    local.get 7
    i32.load offset=148
    local.set 8
    local.get 7
    local.get 8
    i32.store offset=124
    i32.const 0
    local.set 9
    local.get 7
    local.get 9
    i32.store offset=120
    i32.const 0
    local.set 10
    local.get 7
    local.get 10
    i32.store offset=80
    i32.const 0
    local.set 11
    local.get 7
    local.get 11
    i32.store offset=76
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            local.get 7
            i32.load offset=76
            local.set 12
            local.get 7
            i32.load offset=80
            local.set 13
            i32.const 2147483647
            local.set 14
            local.get 14
            local.get 13
            i32.sub
            local.set 15
            local.get 12
            local.set 16
            local.get 15
            local.set 17
            local.get 16
            local.get 17
            i32.gt_s
            local.set 18
            i32.const 1
            local.set 19
            local.get 18
            local.get 19
            i32.and
            local.set 20
            block  ;; label = @5
              local.get 20
              i32.eqz
              br_if 0 (;@5;)
              br 3 (;@2;)
            end
            local.get 7
            i32.load offset=76
            local.set 21
            local.get 7
            i32.load offset=80
            local.set 22
            local.get 22
            local.get 21
            i32.add
            local.set 23
            local.get 7
            local.get 23
            i32.store offset=80
            local.get 7
            i32.load offset=124
            local.set 24
            local.get 24
            i32.load8_u
            local.set 25
            i32.const 0
            local.set 26
            i32.const 255
            local.set 27
            local.get 25
            local.get 27
            i32.and
            local.set 28
            i32.const 255
            local.set 29
            local.get 26
            local.get 29
            i32.and
            local.set 30
            local.get 28
            local.get 30
            i32.ne
            local.set 31
            i32.const 1
            local.set 32
            local.get 31
            local.get 32
            i32.and
            local.set 33
            block  ;; label = @5
              block  ;; label = @6
                local.get 33
                br_if 0 (;@6;)
                br 1 (;@5;)
              end
              local.get 7
              i32.load offset=124
              local.set 34
              local.get 7
              local.get 34
              i32.store offset=132
              loop  ;; label = @6
                local.get 7
                i32.load offset=124
                local.set 35
                local.get 35
                i32.load8_u
                local.set 36
                i32.const 24
                local.set 37
                local.get 36
                local.get 37
                i32.shl
                local.set 38
                local.get 38
                local.get 37
                i32.shr_s
                local.set 39
                i32.const 0
                local.set 40
                local.get 40
                local.set 41
                block  ;; label = @7
                  local.get 39
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 7
                  i32.load offset=124
                  local.set 42
                  local.get 42
                  i32.load8_u
                  local.set 43
                  i32.const 24
                  local.set 44
                  local.get 43
                  local.get 44
                  i32.shl
                  local.set 45
                  local.get 45
                  local.get 44
                  i32.shr_s
                  local.set 46
                  i32.const 37
                  local.set 47
                  local.get 46
                  local.set 48
                  local.get 47
                  local.set 49
                  local.get 48
                  local.get 49
                  i32.ne
                  local.set 50
                  local.get 50
                  local.set 41
                end
                local.get 41
                local.set 51
                i32.const 1
                local.set 52
                local.get 51
                local.get 52
                i32.and
                local.set 53
                block  ;; label = @7
                  local.get 53
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 7
                  i32.load offset=124
                  local.set 54
                  i32.const 1
                  local.set 55
                  local.get 54
                  local.get 55
                  i32.add
                  local.set 56
                  local.get 7
                  local.get 56
                  i32.store offset=124
                  br 1 (;@6;)
                end
              end
              local.get 7
              i32.load offset=124
              local.set 57
              local.get 7
              local.get 57
              i32.store offset=128
              loop  ;; label = @6
                local.get 7
                i32.load offset=124
                local.set 58
                local.get 58
                i32.load8_u
                local.set 59
                i32.const 24
                local.set 60
                local.get 59
                local.get 60
                i32.shl
                local.set 61
                local.get 61
                local.get 60
                i32.shr_s
                local.set 62
                i32.const 37
                local.set 63
                local.get 62
                local.set 64
                local.get 63
                local.set 65
                local.get 64
                local.get 65
                i32.eq
                local.set 66
                i32.const 0
                local.set 67
                i32.const 1
                local.set 68
                local.get 66
                local.get 68
                i32.and
                local.set 69
                local.get 67
                local.set 70
                block  ;; label = @7
                  local.get 69
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 7
                  i32.load offset=124
                  local.set 71
                  local.get 71
                  i32.load8_u offset=1
                  local.set 72
                  i32.const 24
                  local.set 73
                  local.get 72
                  local.get 73
                  i32.shl
                  local.set 74
                  local.get 74
                  local.get 73
                  i32.shr_s
                  local.set 75
                  i32.const 37
                  local.set 76
                  local.get 75
                  local.set 77
                  local.get 76
                  local.set 78
                  local.get 77
                  local.get 78
                  i32.eq
                  local.set 79
                  local.get 79
                  local.set 70
                end
                local.get 70
                local.set 80
                i32.const 1
                local.set 81
                local.get 80
                local.get 81
                i32.and
                local.set 82
                block  ;; label = @7
                  local.get 82
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 7
                  i32.load offset=128
                  local.set 83
                  i32.const 1
                  local.set 84
                  local.get 83
                  local.get 84
                  i32.add
                  local.set 85
                  local.get 7
                  local.get 85
                  i32.store offset=128
                  local.get 7
                  i32.load offset=124
                  local.set 86
                  i32.const 2
                  local.set 87
                  local.get 86
                  local.get 87
                  i32.add
                  local.set 88
                  local.get 7
                  local.get 88
                  i32.store offset=124
                  br 1 (;@6;)
                end
              end
              local.get 7
              i32.load offset=128
              local.set 89
              local.get 7
              i32.load offset=132
              local.set 90
              local.get 89
              local.get 90
              i32.sub
              local.set 91
              local.get 7
              i32.load offset=80
              local.set 92
              i32.const 2147483647
              local.set 93
              local.get 93
              local.get 92
              i32.sub
              local.set 94
              local.get 91
              local.set 95
              local.get 94
              local.set 96
              local.get 95
              local.get 96
              i32.gt_s
              local.set 97
              i32.const 1
              local.set 98
              local.get 97
              local.get 98
              i32.and
              local.set 99
              block  ;; label = @6
                local.get 99
                i32.eqz
                br_if 0 (;@6;)
                br 4 (;@2;)
              end
              local.get 7
              i32.load offset=128
              local.set 100
              local.get 7
              i32.load offset=132
              local.set 101
              local.get 100
              local.get 101
              i32.sub
              local.set 102
              local.get 7
              local.get 102
              i32.store offset=76
              local.get 7
              i32.load offset=152
              local.set 103
              i32.const 0
              local.set 104
              local.get 103
              local.set 105
              local.get 104
              local.set 106
              local.get 105
              local.get 106
              i32.ne
              local.set 107
              i32.const 1
              local.set 108
              local.get 107
              local.get 108
              i32.and
              local.set 109
              block  ;; label = @6
                local.get 109
                i32.eqz
                br_if 0 (;@6;)
                local.get 7
                i32.load offset=152
                local.set 110
                local.get 7
                i32.load offset=132
                local.set 111
                local.get 7
                i32.load offset=76
                local.set 112
                local.get 110
                local.get 111
                local.get 112
                call $out
              end
              local.get 7
              i32.load offset=76
              local.set 113
              block  ;; label = @6
                local.get 113
                i32.eqz
                br_if 0 (;@6;)
                br 2 (;@4;)
              end
              i32.const 0
              local.set 114
              i32.const 1
              local.set 115
              local.get 114
              local.get 115
              i32.and
              local.set 116
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 116
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 7
                      i32.load offset=124
                      local.set 117
                      local.get 117
                      i32.load8_u offset=1
                      local.set 118
                      i32.const 24
                      local.set 119
                      local.get 118
                      local.get 119
                      i32.shl
                      local.set 120
                      local.get 120
                      local.get 119
                      i32.shr_s
                      local.set 121
                      local.get 121
                      call $isdigit
                      local.set 122
                      local.get 122
                      br_if 1 (;@8;)
                      br 2 (;@7;)
                    end
                    local.get 7
                    i32.load offset=124
                    local.set 123
                    local.get 123
                    i32.load8_u offset=1
                    local.set 124
                    i32.const 24
                    local.set 125
                    local.get 124
                    local.get 125
                    i32.shl
                    local.set 126
                    local.get 126
                    local.get 125
                    i32.shr_s
                    local.set 127
                    i32.const 48
                    local.set 128
                    local.get 127
                    local.get 128
                    i32.sub
                    local.set 129
                    i32.const 10
                    local.set 130
                    local.get 129
                    local.set 131
                    local.get 130
                    local.set 132
                    local.get 131
                    local.get 132
                    i32.lt_u
                    local.set 133
                    i32.const 1
                    local.set 134
                    local.get 133
                    local.get 134
                    i32.and
                    local.set 135
                    local.get 135
                    i32.eqz
                    br_if 1 (;@7;)
                  end
                  local.get 7
                  i32.load offset=124
                  local.set 136
                  local.get 136
                  i32.load8_u offset=2
                  local.set 137
                  i32.const 24
                  local.set 138
                  local.get 137
                  local.get 138
                  i32.shl
                  local.set 139
                  local.get 139
                  local.get 138
                  i32.shr_s
                  local.set 140
                  i32.const 36
                  local.set 141
                  local.get 140
                  local.set 142
                  local.get 141
                  local.set 143
                  local.get 142
                  local.get 143
                  i32.eq
                  local.set 144
                  i32.const 1
                  local.set 145
                  local.get 144
                  local.get 145
                  i32.and
                  local.set 146
                  local.get 146
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 1
                  local.set 147
                  local.get 7
                  local.get 147
                  i32.store offset=120
                  local.get 7
                  i32.load offset=124
                  local.set 148
                  local.get 148
                  i32.load8_u offset=1
                  local.set 149
                  i32.const 24
                  local.set 150
                  local.get 149
                  local.get 150
                  i32.shl
                  local.set 151
                  local.get 151
                  local.get 150
                  i32.shr_s
                  local.set 152
                  i32.const 48
                  local.set 153
                  local.get 152
                  local.get 153
                  i32.sub
                  local.set 154
                  local.get 7
                  local.get 154
                  i32.store offset=92
                  local.get 7
                  i32.load offset=124
                  local.set 155
                  i32.const 3
                  local.set 156
                  local.get 155
                  local.get 156
                  i32.add
                  local.set 157
                  local.get 7
                  local.get 157
                  i32.store offset=124
                  br 1 (;@6;)
                end
                i32.const -1
                local.set 158
                local.get 7
                local.get 158
                i32.store offset=92
                local.get 7
                i32.load offset=124
                local.set 159
                i32.const 1
                local.set 160
                local.get 159
                local.get 160
                i32.add
                local.set 161
                local.get 7
                local.get 161
                i32.store offset=124
              end
              i32.const 0
              local.set 162
              local.get 7
              local.get 162
              i32.store offset=116
              loop  ;; label = @6
                local.get 7
                i32.load offset=124
                local.set 163
                local.get 163
                i32.load8_u
                local.set 164
                i32.const 24
                local.set 165
                local.get 164
                local.get 165
                i32.shl
                local.set 166
                local.get 166
                local.get 165
                i32.shr_s
                local.set 167
                i32.const 32
                local.set 168
                local.get 167
                local.get 168
                i32.sub
                local.set 169
                i32.const 32
                local.set 170
                local.get 169
                local.set 171
                local.get 170
                local.set 172
                local.get 171
                local.get 172
                i32.lt_u
                local.set 173
                i32.const 0
                local.set 174
                i32.const 1
                local.set 175
                local.get 173
                local.get 175
                i32.and
                local.set 176
                local.get 174
                local.set 177
                block  ;; label = @7
                  local.get 176
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 7
                  i32.load offset=124
                  local.set 178
                  local.get 178
                  i32.load8_u
                  local.set 179
                  i32.const 24
                  local.set 180
                  local.get 179
                  local.get 180
                  i32.shl
                  local.set 181
                  local.get 181
                  local.get 180
                  i32.shr_s
                  local.set 182
                  i32.const 32
                  local.set 183
                  local.get 182
                  local.get 183
                  i32.sub
                  local.set 184
                  i32.const 1
                  local.set 185
                  local.get 185
                  local.get 184
                  i32.shl
                  local.set 186
                  i32.const 75913
                  local.set 187
                  local.get 186
                  local.get 187
                  i32.and
                  local.set 188
                  i32.const 0
                  local.set 189
                  local.get 188
                  local.set 190
                  local.get 189
                  local.set 191
                  local.get 190
                  local.get 191
                  i32.ne
                  local.set 192
                  local.get 192
                  local.set 177
                end
                local.get 177
                local.set 193
                i32.const 1
                local.set 194
                local.get 193
                local.get 194
                i32.and
                local.set 195
                block  ;; label = @7
                  local.get 195
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 7
                  i32.load offset=124
                  local.set 196
                  local.get 196
                  i32.load8_u
                  local.set 197
                  i32.const 24
                  local.set 198
                  local.get 197
                  local.get 198
                  i32.shl
                  local.set 199
                  local.get 199
                  local.get 198
                  i32.shr_s
                  local.set 200
                  i32.const 32
                  local.set 201
                  local.get 200
                  local.get 201
                  i32.sub
                  local.set 202
                  i32.const 1
                  local.set 203
                  local.get 203
                  local.get 202
                  i32.shl
                  local.set 204
                  local.get 7
                  i32.load offset=116
                  local.set 205
                  local.get 205
                  local.get 204
                  i32.or
                  local.set 206
                  local.get 7
                  local.get 206
                  i32.store offset=116
                  local.get 7
                  i32.load offset=124
                  local.set 207
                  i32.const 1
                  local.set 208
                  local.get 207
                  local.get 208
                  i32.add
                  local.set 209
                  local.get 7
                  local.get 209
                  i32.store offset=124
                  br 1 (;@6;)
                end
              end
              local.get 7
              i32.load offset=124
              local.set 210
              local.get 210
              i32.load8_u
              local.set 211
              i32.const 24
              local.set 212
              local.get 211
              local.get 212
              i32.shl
              local.set 213
              local.get 213
              local.get 212
              i32.shr_s
              local.set 214
              i32.const 42
              local.set 215
              local.get 214
              local.set 216
              local.get 215
              local.set 217
              local.get 216
              local.get 217
              i32.eq
              local.set 218
              i32.const 1
              local.set 219
              local.get 218
              local.get 219
              i32.and
              local.set 220
              block  ;; label = @6
                block  ;; label = @7
                  local.get 220
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 221
                  i32.const 1
                  local.set 222
                  local.get 221
                  local.get 222
                  i32.and
                  local.set 223
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 223
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 7
                          i32.load offset=124
                          local.set 224
                          local.get 224
                          i32.load8_u offset=1
                          local.set 225
                          i32.const 24
                          local.set 226
                          local.get 225
                          local.get 226
                          i32.shl
                          local.set 227
                          local.get 227
                          local.get 226
                          i32.shr_s
                          local.set 228
                          local.get 228
                          call $isdigit
                          local.set 229
                          local.get 229
                          br_if 1 (;@10;)
                          br 2 (;@9;)
                        end
                        local.get 7
                        i32.load offset=124
                        local.set 230
                        local.get 230
                        i32.load8_u offset=1
                        local.set 231
                        i32.const 24
                        local.set 232
                        local.get 231
                        local.get 232
                        i32.shl
                        local.set 233
                        local.get 233
                        local.get 232
                        i32.shr_s
                        local.set 234
                        i32.const 48
                        local.set 235
                        local.get 234
                        local.get 235
                        i32.sub
                        local.set 236
                        i32.const 10
                        local.set 237
                        local.get 236
                        local.set 238
                        local.get 237
                        local.set 239
                        local.get 238
                        local.get 239
                        i32.lt_u
                        local.set 240
                        i32.const 1
                        local.set 241
                        local.get 240
                        local.get 241
                        i32.and
                        local.set 242
                        local.get 242
                        i32.eqz
                        br_if 1 (;@9;)
                      end
                      local.get 7
                      i32.load offset=124
                      local.set 243
                      local.get 243
                      i32.load8_u offset=2
                      local.set 244
                      i32.const 24
                      local.set 245
                      local.get 244
                      local.get 245
                      i32.shl
                      local.set 246
                      local.get 246
                      local.get 245
                      i32.shr_s
                      local.set 247
                      i32.const 36
                      local.set 248
                      local.get 247
                      local.set 249
                      local.get 248
                      local.set 250
                      local.get 249
                      local.get 250
                      i32.eq
                      local.set 251
                      i32.const 1
                      local.set 252
                      local.get 251
                      local.get 252
                      i32.and
                      local.set 253
                      local.get 253
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 1
                      local.set 254
                      local.get 7
                      local.get 254
                      i32.store offset=120
                      local.get 7
                      i32.load offset=136
                      local.set 255
                      local.get 7
                      i32.load offset=124
                      local.set 256
                      local.get 256
                      i32.load8_u offset=1
                      local.set 257
                      i32.const 24
                      local.set 258
                      local.get 257
                      local.get 258
                      i32.shl
                      local.set 259
                      local.get 259
                      local.get 258
                      i32.shr_s
                      local.set 260
                      i32.const 48
                      local.set 261
                      local.get 260
                      local.get 261
                      i32.sub
                      local.set 262
                      i32.const 2
                      local.set 263
                      local.get 262
                      local.get 263
                      i32.shl
                      local.set 264
                      local.get 255
                      local.get 264
                      i32.add
                      local.set 265
                      i32.const 10
                      local.set 266
                      local.get 265
                      local.get 266
                      i32.store
                      local.get 7
                      i32.load offset=140
                      local.set 267
                      local.get 7
                      i32.load offset=124
                      local.set 268
                      local.get 268
                      i32.load8_u offset=1
                      local.set 269
                      i32.const 24
                      local.set 270
                      local.get 269
                      local.get 270
                      i32.shl
                      local.set 271
                      local.get 271
                      local.get 270
                      i32.shr_s
                      local.set 272
                      i32.const 48
                      local.set 273
                      local.get 272
                      local.get 273
                      i32.sub
                      local.set 274
                      i32.const 3
                      local.set 275
                      local.get 274
                      local.get 275
                      i32.shl
                      local.set 276
                      local.get 267
                      local.get 276
                      i32.add
                      local.set 277
                      local.get 277
                      i64.load
                      local.set 278
                      local.get 278
                      i32.wrap_i64
                      local.set 279
                      local.get 7
                      local.get 279
                      i32.store offset=112
                      local.get 7
                      i32.load offset=124
                      local.set 280
                      i32.const 3
                      local.set 281
                      local.get 280
                      local.get 281
                      i32.add
                      local.set 282
                      local.get 7
                      local.get 282
                      i32.store offset=124
                      br 1 (;@8;)
                    end
                    local.get 7
                    i32.load offset=120
                    local.set 283
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 283
                        br_if 0 (;@10;)
                        local.get 7
                        i32.load offset=152
                        local.set 284
                        i32.const 0
                        local.set 285
                        local.get 284
                        local.set 286
                        local.get 285
                        local.set 287
                        local.get 286
                        local.get 287
                        i32.ne
                        local.set 288
                        i32.const 1
                        local.set 289
                        local.get 288
                        local.get 289
                        i32.and
                        local.set 290
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 290
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 7
                            i32.load offset=144
                            local.set 291
                            local.get 291
                            i32.load
                            local.set 292
                            i32.const 4
                            local.set 293
                            local.get 292
                            local.get 293
                            i32.add
                            local.set 294
                            local.get 291
                            local.get 294
                            i32.store
                            local.get 292
                            i32.load
                            local.set 295
                            local.get 295
                            local.set 296
                            br 1 (;@11;)
                          end
                          i32.const 0
                          local.set 297
                          local.get 297
                          local.set 296
                        end
                        local.get 296
                        local.set 298
                        local.get 7
                        local.get 298
                        i32.store offset=112
                        local.get 7
                        i32.load offset=124
                        local.set 299
                        i32.const 1
                        local.set 300
                        local.get 299
                        local.get 300
                        i32.add
                        local.set 301
                        local.get 7
                        local.get 301
                        i32.store offset=124
                        br 1 (;@9;)
                      end
                      br 6 (;@3;)
                    end
                  end
                  local.get 7
                  i32.load offset=112
                  local.set 302
                  i32.const 0
                  local.set 303
                  local.get 302
                  local.set 304
                  local.get 303
                  local.set 305
                  local.get 304
                  local.get 305
                  i32.lt_s
                  local.set 306
                  i32.const 1
                  local.set 307
                  local.get 306
                  local.get 307
                  i32.and
                  local.set 308
                  block  ;; label = @8
                    local.get 308
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 7
                    i32.load offset=116
                    local.set 309
                    i32.const 8192
                    local.set 310
                    local.get 309
                    local.get 310
                    i32.or
                    local.set 311
                    local.get 7
                    local.get 311
                    i32.store offset=116
                    local.get 7
                    i32.load offset=112
                    local.set 312
                    i32.const 0
                    local.set 313
                    local.get 313
                    local.get 312
                    i32.sub
                    local.set 314
                    local.get 7
                    local.get 314
                    i32.store offset=112
                  end
                  br 1 (;@6;)
                end
                i32.const 124
                local.set 315
                local.get 7
                local.get 315
                i32.add
                local.set 316
                local.get 316
                local.set 317
                local.get 317
                call $getint
                local.set 318
                local.get 7
                local.get 318
                i32.store offset=112
                i32.const 0
                local.set 319
                local.get 318
                local.set 320
                local.get 319
                local.set 321
                local.get 320
                local.get 321
                i32.lt_s
                local.set 322
                i32.const 1
                local.set 323
                local.get 322
                local.get 323
                i32.and
                local.set 324
                block  ;; label = @7
                  local.get 324
                  i32.eqz
                  br_if 0 (;@7;)
                  br 5 (;@2;)
                end
              end
              local.get 7
              i32.load offset=124
              local.set 325
              local.get 325
              i32.load8_u
              local.set 326
              i32.const 24
              local.set 327
              local.get 326
              local.get 327
              i32.shl
              local.set 328
              local.get 328
              local.get 327
              i32.shr_s
              local.set 329
              i32.const 46
              local.set 330
              local.get 329
              local.set 331
              local.get 330
              local.set 332
              local.get 331
              local.get 332
              i32.eq
              local.set 333
              i32.const 1
              local.set 334
              local.get 333
              local.get 334
              i32.and
              local.set 335
              block  ;; label = @6
                block  ;; label = @7
                  local.get 335
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 7
                  i32.load offset=124
                  local.set 336
                  local.get 336
                  i32.load8_u offset=1
                  local.set 337
                  i32.const 24
                  local.set 338
                  local.get 337
                  local.get 338
                  i32.shl
                  local.set 339
                  local.get 339
                  local.get 338
                  i32.shr_s
                  local.set 340
                  i32.const 42
                  local.set 341
                  local.get 340
                  local.set 342
                  local.get 341
                  local.set 343
                  local.get 342
                  local.get 343
                  i32.eq
                  local.set 344
                  i32.const 1
                  local.set 345
                  local.get 344
                  local.get 345
                  i32.and
                  local.set 346
                  local.get 346
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 347
                  i32.const 1
                  local.set 348
                  local.get 347
                  local.get 348
                  i32.and
                  local.set 349
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 349
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 7
                          i32.load offset=124
                          local.set 350
                          local.get 350
                          i32.load8_u offset=2
                          local.set 351
                          i32.const 24
                          local.set 352
                          local.get 351
                          local.get 352
                          i32.shl
                          local.set 353
                          local.get 353
                          local.get 352
                          i32.shr_s
                          local.set 354
                          local.get 354
                          call $isdigit
                          local.set 355
                          local.get 355
                          br_if 1 (;@10;)
                          br 2 (;@9;)
                        end
                        local.get 7
                        i32.load offset=124
                        local.set 356
                        local.get 356
                        i32.load8_u offset=2
                        local.set 357
                        i32.const 24
                        local.set 358
                        local.get 357
                        local.get 358
                        i32.shl
                        local.set 359
                        local.get 359
                        local.get 358
                        i32.shr_s
                        local.set 360
                        i32.const 48
                        local.set 361
                        local.get 360
                        local.get 361
                        i32.sub
                        local.set 362
                        i32.const 10
                        local.set 363
                        local.get 362
                        local.set 364
                        local.get 363
                        local.set 365
                        local.get 364
                        local.get 365
                        i32.lt_u
                        local.set 366
                        i32.const 1
                        local.set 367
                        local.get 366
                        local.get 367
                        i32.and
                        local.set 368
                        local.get 368
                        i32.eqz
                        br_if 1 (;@9;)
                      end
                      local.get 7
                      i32.load offset=124
                      local.set 369
                      local.get 369
                      i32.load8_u offset=3
                      local.set 370
                      i32.const 24
                      local.set 371
                      local.get 370
                      local.get 371
                      i32.shl
                      local.set 372
                      local.get 372
                      local.get 371
                      i32.shr_s
                      local.set 373
                      i32.const 36
                      local.set 374
                      local.get 373
                      local.set 375
                      local.get 374
                      local.set 376
                      local.get 375
                      local.get 376
                      i32.eq
                      local.set 377
                      i32.const 1
                      local.set 378
                      local.get 377
                      local.get 378
                      i32.and
                      local.set 379
                      local.get 379
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 7
                      i32.load offset=136
                      local.set 380
                      local.get 7
                      i32.load offset=124
                      local.set 381
                      local.get 381
                      i32.load8_u offset=2
                      local.set 382
                      i32.const 24
                      local.set 383
                      local.get 382
                      local.get 383
                      i32.shl
                      local.set 384
                      local.get 384
                      local.get 383
                      i32.shr_s
                      local.set 385
                      i32.const 48
                      local.set 386
                      local.get 385
                      local.get 386
                      i32.sub
                      local.set 387
                      i32.const 2
                      local.set 388
                      local.get 387
                      local.get 388
                      i32.shl
                      local.set 389
                      local.get 380
                      local.get 389
                      i32.add
                      local.set 390
                      i32.const 10
                      local.set 391
                      local.get 390
                      local.get 391
                      i32.store
                      local.get 7
                      i32.load offset=140
                      local.set 392
                      local.get 7
                      i32.load offset=124
                      local.set 393
                      local.get 393
                      i32.load8_u offset=2
                      local.set 394
                      i32.const 24
                      local.set 395
                      local.get 394
                      local.get 395
                      i32.shl
                      local.set 396
                      local.get 396
                      local.get 395
                      i32.shr_s
                      local.set 397
                      i32.const 48
                      local.set 398
                      local.get 397
                      local.get 398
                      i32.sub
                      local.set 399
                      i32.const 3
                      local.set 400
                      local.get 399
                      local.get 400
                      i32.shl
                      local.set 401
                      local.get 392
                      local.get 401
                      i32.add
                      local.set 402
                      local.get 402
                      i64.load
                      local.set 403
                      local.get 403
                      i32.wrap_i64
                      local.set 404
                      local.get 7
                      local.get 404
                      i32.store offset=108
                      local.get 7
                      i32.load offset=124
                      local.set 405
                      i32.const 4
                      local.set 406
                      local.get 405
                      local.get 406
                      i32.add
                      local.set 407
                      local.get 7
                      local.get 407
                      i32.store offset=124
                      br 1 (;@8;)
                    end
                    local.get 7
                    i32.load offset=120
                    local.set 408
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 408
                        br_if 0 (;@10;)
                        local.get 7
                        i32.load offset=152
                        local.set 409
                        i32.const 0
                        local.set 410
                        local.get 409
                        local.set 411
                        local.get 410
                        local.set 412
                        local.get 411
                        local.get 412
                        i32.ne
                        local.set 413
                        i32.const 1
                        local.set 414
                        local.get 413
                        local.get 414
                        i32.and
                        local.set 415
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 415
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 7
                            i32.load offset=144
                            local.set 416
                            local.get 416
                            i32.load
                            local.set 417
                            i32.const 4
                            local.set 418
                            local.get 417
                            local.get 418
                            i32.add
                            local.set 419
                            local.get 416
                            local.get 419
                            i32.store
                            local.get 417
                            i32.load
                            local.set 420
                            local.get 420
                            local.set 421
                            br 1 (;@11;)
                          end
                          i32.const 0
                          local.set 422
                          local.get 422
                          local.set 421
                        end
                        local.get 421
                        local.set 423
                        local.get 7
                        local.get 423
                        i32.store offset=108
                        local.get 7
                        i32.load offset=124
                        local.set 424
                        i32.const 2
                        local.set 425
                        local.get 424
                        local.get 425
                        i32.add
                        local.set 426
                        local.get 7
                        local.get 426
                        i32.store offset=124
                        br 1 (;@9;)
                      end
                      br 6 (;@3;)
                    end
                  end
                  local.get 7
                  i32.load offset=108
                  local.set 427
                  i32.const 0
                  local.set 428
                  local.get 427
                  local.set 429
                  local.get 428
                  local.set 430
                  local.get 429
                  local.get 430
                  i32.ge_s
                  local.set 431
                  i32.const 1
                  local.set 432
                  local.get 431
                  local.get 432
                  i32.and
                  local.set 433
                  local.get 7
                  local.get 433
                  i32.store offset=104
                  br 1 (;@6;)
                end
                local.get 7
                i32.load offset=124
                local.set 434
                local.get 434
                i32.load8_u
                local.set 435
                i32.const 24
                local.set 436
                local.get 435
                local.get 436
                i32.shl
                local.set 437
                local.get 437
                local.get 436
                i32.shr_s
                local.set 438
                i32.const 46
                local.set 439
                local.get 438
                local.set 440
                local.get 439
                local.set 441
                local.get 440
                local.get 441
                i32.eq
                local.set 442
                i32.const 1
                local.set 443
                local.get 442
                local.get 443
                i32.and
                local.set 444
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 444
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 7
                    i32.load offset=124
                    local.set 445
                    i32.const 1
                    local.set 446
                    local.get 445
                    local.get 446
                    i32.add
                    local.set 447
                    local.get 7
                    local.get 447
                    i32.store offset=124
                    i32.const 124
                    local.set 448
                    local.get 7
                    local.get 448
                    i32.add
                    local.set 449
                    local.get 449
                    local.set 450
                    local.get 450
                    call $getint
                    local.set 451
                    local.get 7
                    local.get 451
                    i32.store offset=108
                    i32.const 1
                    local.set 452
                    local.get 7
                    local.get 452
                    i32.store offset=104
                    br 1 (;@7;)
                  end
                  i32.const -1
                  local.set 453
                  local.get 7
                  local.get 453
                  i32.store offset=108
                  i32.const 0
                  local.set 454
                  local.get 7
                  local.get 454
                  i32.store offset=104
                end
              end
              i32.const 0
              local.set 455
              local.get 7
              local.get 455
              i32.store offset=88
              loop  ;; label = @6
                local.get 7
                i32.load offset=124
                local.set 456
                local.get 456
                i32.load8_u
                local.set 457
                i32.const 24
                local.set 458
                local.get 457
                local.get 458
                i32.shl
                local.set 459
                local.get 459
                local.get 458
                i32.shr_s
                local.set 460
                i32.const 65
                local.set 461
                local.get 460
                local.get 461
                i32.sub
                local.set 462
                i32.const 57
                local.set 463
                local.get 462
                local.set 464
                local.get 463
                local.set 465
                local.get 464
                local.get 465
                i32.gt_u
                local.set 466
                i32.const 1
                local.set 467
                local.get 466
                local.get 467
                i32.and
                local.set 468
                block  ;; label = @7
                  local.get 468
                  i32.eqz
                  br_if 0 (;@7;)
                  br 4 (;@3;)
                end
                local.get 7
                i32.load offset=88
                local.set 469
                local.get 7
                local.get 469
                i32.store offset=84
                local.get 7
                i32.load offset=88
                local.set 470
                i32.const 3136
                local.set 471
                i32.const 58
                local.set 472
                local.get 470
                local.get 472
                i32.mul
                local.set 473
                local.get 471
                local.get 473
                i32.add
                local.set 474
                local.get 7
                i32.load offset=124
                local.set 475
                i32.const 1
                local.set 476
                local.get 475
                local.get 476
                i32.add
                local.set 477
                local.get 7
                local.get 477
                i32.store offset=124
                local.get 475
                i32.load8_u
                local.set 478
                i32.const 24
                local.set 479
                local.get 478
                local.get 479
                i32.shl
                local.set 480
                local.get 480
                local.get 479
                i32.shr_s
                local.set 481
                i32.const 65
                local.set 482
                local.get 481
                local.get 482
                i32.sub
                local.set 483
                local.get 474
                local.get 483
                i32.add
                local.set 484
                local.get 484
                i32.load8_u
                local.set 485
                i32.const 255
                local.set 486
                local.get 485
                local.get 486
                i32.and
                local.set 487
                local.get 7
                local.get 487
                i32.store offset=88
                local.get 7
                i32.load offset=88
                local.set 488
                i32.const 1
                local.set 489
                local.get 488
                local.get 489
                i32.sub
                local.set 490
                i32.const 8
                local.set 491
                local.get 490
                local.set 492
                local.get 491
                local.set 493
                local.get 492
                local.get 493
                i32.lt_u
                local.set 494
                i32.const 1
                local.set 495
                local.get 494
                local.get 495
                i32.and
                local.set 496
                local.get 496
                br_if 0 (;@6;)
              end
              local.get 7
              i32.load offset=88
              local.set 497
              block  ;; label = @6
                local.get 497
                br_if 0 (;@6;)
                br 3 (;@3;)
              end
              local.get 7
              i32.load offset=88
              local.set 498
              i32.const 27
              local.set 499
              local.get 498
              local.set 500
              local.get 499
              local.set 501
              local.get 500
              local.get 501
              i32.eq
              local.set 502
              i32.const 1
              local.set 503
              local.get 502
              local.get 503
              i32.and
              local.set 504
              block  ;; label = @6
                block  ;; label = @7
                  local.get 504
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 7
                  i32.load offset=92
                  local.set 505
                  i32.const 0
                  local.set 506
                  local.get 505
                  local.set 507
                  local.get 506
                  local.set 508
                  local.get 507
                  local.get 508
                  i32.ge_s
                  local.set 509
                  i32.const 1
                  local.set 510
                  local.get 509
                  local.get 510
                  i32.and
                  local.set 511
                  block  ;; label = @8
                    local.get 511
                    i32.eqz
                    br_if 0 (;@8;)
                    br 5 (;@3;)
                  end
                  br 1 (;@6;)
                end
                local.get 7
                i32.load offset=92
                local.set 512
                i32.const 0
                local.set 513
                local.get 512
                local.set 514
                local.get 513
                local.set 515
                local.get 514
                local.get 515
                i32.ge_s
                local.set 516
                i32.const 1
                local.set 517
                local.get 516
                local.get 517
                i32.and
                local.set 518
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 518
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 7
                    i32.load offset=88
                    local.set 519
                    local.get 7
                    i32.load offset=136
                    local.set 520
                    local.get 7
                    i32.load offset=92
                    local.set 521
                    i32.const 2
                    local.set 522
                    local.get 521
                    local.get 522
                    i32.shl
                    local.set 523
                    local.get 520
                    local.get 523
                    i32.add
                    local.set 524
                    local.get 524
                    local.get 519
                    i32.store
                    local.get 7
                    i32.load offset=140
                    local.set 525
                    local.get 7
                    i32.load offset=92
                    local.set 526
                    i32.const 3
                    local.set 527
                    local.get 526
                    local.get 527
                    i32.shl
                    local.set 528
                    local.get 525
                    local.get 528
                    i32.add
                    local.set 529
                    local.get 529
                    i64.load
                    local.set 530
                    local.get 7
                    local.get 530
                    i64.store offset=96
                    br 1 (;@7;)
                  end
                  local.get 7
                  i32.load offset=152
                  local.set 531
                  i32.const 0
                  local.set 532
                  local.get 531
                  local.set 533
                  local.get 532
                  local.set 534
                  local.get 533
                  local.get 534
                  i32.ne
                  local.set 535
                  i32.const 1
                  local.set 536
                  local.get 535
                  local.get 536
                  i32.and
                  local.set 537
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 537
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 7
                      i32.load offset=88
                      local.set 538
                      local.get 7
                      i32.load offset=144
                      local.set 539
                      i32.const 96
                      local.set 540
                      local.get 7
                      local.get 540
                      i32.add
                      local.set 541
                      local.get 541
                      local.set 542
                      local.get 542
                      local.get 538
                      local.get 539
                      call $pop_arg
                      br 1 (;@8;)
                    end
                    i32.const 0
                    local.set 543
                    local.get 7
                    local.get 543
                    i32.store offset=156
                    br 7 (;@1;)
                  end
                end
              end
              local.get 7
              i32.load offset=152
              local.set 544
              i32.const 0
              local.set 545
              local.get 544
              local.set 546
              local.get 545
              local.set 547
              local.get 546
              local.get 547
              i32.ne
              local.set 548
              i32.const 1
              local.set 549
              local.get 548
              local.get 549
              i32.and
              local.set 550
              block  ;; label = @6
                local.get 550
                br_if 0 (;@6;)
                br 2 (;@4;)
              end
              i32.const 32
              local.set 551
              local.get 7
              local.get 551
              i32.add
              local.set 552
              local.get 552
              local.set 553
              i32.const 40
              local.set 554
              local.get 553
              local.get 554
              i32.add
              local.set 555
              local.get 7
              local.get 555
              i32.store offset=128
              i32.const 2842
              local.set 556
              local.get 7
              local.get 556
              i32.store offset=28
              i32.const 0
              local.set 557
              local.get 7
              local.get 557
              i32.store offset=20
              local.get 7
              i32.load offset=124
              local.set 558
              i32.const -1
              local.set 559
              local.get 558
              local.get 559
              i32.add
              local.set 560
              local.get 560
              i32.load8_u
              local.set 561
              i32.const 24
              local.set 562
              local.get 561
              local.get 562
              i32.shl
              local.set 563
              local.get 563
              local.get 562
              i32.shr_s
              local.set 564
              local.get 7
              local.get 564
              i32.store offset=24
              local.get 7
              i32.load offset=84
              local.set 565
              block  ;; label = @6
                local.get 565
                i32.eqz
                br_if 0 (;@6;)
                local.get 7
                i32.load offset=24
                local.set 566
                i32.const 15
                local.set 567
                local.get 566
                local.get 567
                i32.and
                local.set 568
                i32.const 3
                local.set 569
                local.get 568
                local.set 570
                local.get 569
                local.set 571
                local.get 570
                local.get 571
                i32.eq
                local.set 572
                i32.const 1
                local.set 573
                local.get 572
                local.get 573
                i32.and
                local.set 574
                local.get 574
                i32.eqz
                br_if 0 (;@6;)
                local.get 7
                i32.load offset=24
                local.set 575
                i32.const -33
                local.set 576
                local.get 575
                local.get 576
                i32.and
                local.set 577
                local.get 7
                local.get 577
                i32.store offset=24
              end
              local.get 7
              i32.load offset=116
              local.set 578
              i32.const 8192
              local.set 579
              local.get 578
              local.get 579
              i32.and
              local.set 580
              block  ;; label = @6
                local.get 580
                i32.eqz
                br_if 0 (;@6;)
                local.get 7
                i32.load offset=116
                local.set 581
                i32.const -65537
                local.set 582
                local.get 581
                local.get 582
                i32.and
                local.set 583
                local.get 7
                local.get 583
                i32.store offset=116
              end
              local.get 7
              i32.load offset=24
              local.set 584
              i32.const -65
              local.set 585
              local.get 584
              local.get 585
              i32.add
              local.set 586
              i32.const 55
              local.set 587
              local.get 586
              local.get 587
              i32.gt_u
              drop
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              local.get 586
                                              br_table 14 (;@7;) 15 (;@6;) 12 (;@9;) 15 (;@6;) 14 (;@7;) 14 (;@7;) 14 (;@7;) 15 (;@6;) 15 (;@6;) 15 (;@6;) 15 (;@6;) 15 (;@6;) 15 (;@6;) 15 (;@6;) 15 (;@6;) 15 (;@6;) 15 (;@6;) 15 (;@6;) 13 (;@8;) 15 (;@6;) 15 (;@6;) 15 (;@6;) 15 (;@6;) 2 (;@19;) 15 (;@6;) 15 (;@6;) 15 (;@6;) 15 (;@6;) 15 (;@6;) 15 (;@6;) 15 (;@6;) 15 (;@6;) 14 (;@7;) 15 (;@6;) 8 (;@13;) 5 (;@16;) 14 (;@7;) 14 (;@7;) 14 (;@7;) 15 (;@6;) 5 (;@16;) 15 (;@6;) 15 (;@6;) 15 (;@6;) 9 (;@12;) 0 (;@21;) 3 (;@18;) 1 (;@20;) 15 (;@6;) 15 (;@6;) 10 (;@11;) 15 (;@6;) 6 (;@15;) 15 (;@6;) 15 (;@6;) 2 (;@19;) 15 (;@6;)
                                            end
                                            local.get 7
                                            i32.load offset=84
                                            local.set 588
                                            i32.const 7
                                            local.set 589
                                            local.get 588
                                            local.get 589
                                            i32.gt_u
                                            drop
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            local.get 588
                                                            br_table 0 (;@28;) 1 (;@27;) 2 (;@26;) 3 (;@25;) 4 (;@24;) 7 (;@21;) 5 (;@23;) 6 (;@22;) 7 (;@21;)
                                                          end
                                                          local.get 7
                                                          i32.load offset=80
                                                          local.set 590
                                                          local.get 7
                                                          i32.load offset=96
                                                          local.set 591
                                                          local.get 591
                                                          local.get 590
                                                          i32.store
                                                          br 6 (;@21;)
                                                        end
                                                        local.get 7
                                                        i32.load offset=80
                                                        local.set 592
                                                        local.get 7
                                                        i32.load offset=96
                                                        local.set 593
                                                        local.get 593
                                                        local.get 592
                                                        i32.store
                                                        br 5 (;@21;)
                                                      end
                                                      local.get 7
                                                      i32.load offset=80
                                                      local.set 594
                                                      local.get 594
                                                      local.set 595
                                                      local.get 595
                                                      i64.extend_i32_s
                                                      local.set 596
                                                      local.get 7
                                                      i32.load offset=96
                                                      local.set 597
                                                      local.get 597
                                                      local.get 596
                                                      i64.store
                                                      br 4 (;@21;)
                                                    end
                                                    local.get 7
                                                    i32.load offset=80
                                                    local.set 598
                                                    local.get 7
                                                    i32.load offset=96
                                                    local.set 599
                                                    local.get 599
                                                    local.get 598
                                                    i32.store16
                                                    br 3 (;@21;)
                                                  end
                                                  local.get 7
                                                  i32.load offset=80
                                                  local.set 600
                                                  local.get 7
                                                  i32.load offset=96
                                                  local.set 601
                                                  local.get 601
                                                  local.get 600
                                                  i32.store8
                                                  br 2 (;@21;)
                                                end
                                                local.get 7
                                                i32.load offset=80
                                                local.set 602
                                                local.get 7
                                                i32.load offset=96
                                                local.set 603
                                                local.get 603
                                                local.get 602
                                                i32.store
                                                br 1 (;@21;)
                                              end
                                              local.get 7
                                              i32.load offset=80
                                              local.set 604
                                              local.get 604
                                              local.set 605
                                              local.get 605
                                              i64.extend_i32_s
                                              local.set 606
                                              local.get 7
                                              i32.load offset=96
                                              local.set 607
                                              local.get 607
                                              local.get 606
                                              i64.store
                                            end
                                            br 16 (;@4;)
                                          end
                                          local.get 7
                                          i32.load offset=108
                                          local.set 608
                                          i32.const 8
                                          local.set 609
                                          local.get 608
                                          local.set 610
                                          local.get 609
                                          local.set 611
                                          local.get 610
                                          local.get 611
                                          i32.gt_u
                                          local.set 612
                                          i32.const 1
                                          local.set 613
                                          local.get 612
                                          local.get 613
                                          i32.and
                                          local.set 614
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              local.get 614
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              local.get 7
                                              i32.load offset=108
                                              local.set 615
                                              local.get 615
                                              local.set 616
                                              br 1 (;@20;)
                                            end
                                            i32.const 8
                                            local.set 617
                                            local.get 617
                                            local.set 616
                                          end
                                          local.get 616
                                          local.set 618
                                          local.get 7
                                          local.get 618
                                          i32.store offset=108
                                          i32.const 120
                                          local.set 619
                                          local.get 7
                                          local.get 619
                                          i32.store offset=24
                                          local.get 7
                                          i32.load offset=116
                                          local.set 620
                                          i32.const 8
                                          local.set 621
                                          local.get 620
                                          local.get 621
                                          i32.or
                                          local.set 622
                                          local.get 7
                                          local.get 622
                                          i32.store offset=116
                                        end
                                        local.get 7
                                        i64.load offset=96
                                        local.set 623
                                        local.get 7
                                        i32.load offset=128
                                        local.set 624
                                        local.get 7
                                        i32.load offset=24
                                        local.set 625
                                        i32.const 32
                                        local.set 626
                                        local.get 625
                                        local.get 626
                                        i32.and
                                        local.set 627
                                        local.get 623
                                        local.get 624
                                        local.get 627
                                        call $fmt_x
                                        local.set 628
                                        local.get 7
                                        local.get 628
                                        i32.store offset=132
                                        local.get 7
                                        i64.load offset=96
                                        local.set 629
                                        i64.const 0
                                        local.set 630
                                        local.get 629
                                        local.set 631
                                        local.get 630
                                        local.set 632
                                        local.get 631
                                        local.get 632
                                        i64.ne
                                        local.set 633
                                        i32.const 1
                                        local.set 634
                                        local.get 633
                                        local.get 634
                                        i32.and
                                        local.set 635
                                        block  ;; label = @19
                                          local.get 635
                                          i32.eqz
                                          br_if 0 (;@19;)
                                          local.get 7
                                          i32.load offset=116
                                          local.set 636
                                          i32.const 8
                                          local.set 637
                                          local.get 636
                                          local.get 637
                                          i32.and
                                          local.set 638
                                          local.get 638
                                          i32.eqz
                                          br_if 0 (;@19;)
                                          local.get 7
                                          i32.load offset=24
                                          local.set 639
                                          i32.const 4
                                          local.set 640
                                          local.get 639
                                          local.get 640
                                          i32.shr_s
                                          local.set 641
                                          local.get 7
                                          i32.load offset=28
                                          local.set 642
                                          local.get 642
                                          local.get 641
                                          i32.add
                                          local.set 643
                                          local.get 7
                                          local.get 643
                                          i32.store offset=28
                                          i32.const 2
                                          local.set 644
                                          local.get 7
                                          local.get 644
                                          i32.store offset=20
                                        end
                                        i32.const 0
                                        local.set 645
                                        i32.const 1
                                        local.set 646
                                        local.get 645
                                        local.get 646
                                        i32.and
                                        local.set 647
                                        local.get 647
                                        i32.eqz
                                        br_if 1 (;@17;)
                                      end
                                      local.get 7
                                      i64.load offset=96
                                      local.set 648
                                      local.get 7
                                      i32.load offset=128
                                      local.set 649
                                      local.get 648
                                      local.get 649
                                      call $fmt_o
                                      local.set 650
                                      local.get 7
                                      local.get 650
                                      i32.store offset=132
                                      local.get 7
                                      i32.load offset=116
                                      local.set 651
                                      i32.const 8
                                      local.set 652
                                      local.get 651
                                      local.get 652
                                      i32.and
                                      local.set 653
                                      block  ;; label = @18
                                        local.get 653
                                        i32.eqz
                                        br_if 0 (;@18;)
                                        local.get 7
                                        i32.load offset=108
                                        local.set 654
                                        local.get 7
                                        i32.load offset=128
                                        local.set 655
                                        local.get 7
                                        i32.load offset=132
                                        local.set 656
                                        local.get 655
                                        local.get 656
                                        i32.sub
                                        local.set 657
                                        i32.const 1
                                        local.set 658
                                        local.get 657
                                        local.get 658
                                        i32.add
                                        local.set 659
                                        local.get 654
                                        local.set 660
                                        local.get 659
                                        local.set 661
                                        local.get 660
                                        local.get 661
                                        i32.lt_s
                                        local.set 662
                                        i32.const 1
                                        local.set 663
                                        local.get 662
                                        local.get 663
                                        i32.and
                                        local.set 664
                                        local.get 664
                                        i32.eqz
                                        br_if 0 (;@18;)
                                        local.get 7
                                        i32.load offset=128
                                        local.set 665
                                        local.get 7
                                        i32.load offset=132
                                        local.set 666
                                        local.get 665
                                        local.get 666
                                        i32.sub
                                        local.set 667
                                        i32.const 1
                                        local.set 668
                                        local.get 667
                                        local.get 668
                                        i32.add
                                        local.set 669
                                        local.get 7
                                        local.get 669
                                        i32.store offset=108
                                      end
                                    end
                                    i32.const 0
                                    local.set 670
                                    i32.const 1
                                    local.set 671
                                    local.get 670
                                    local.get 671
                                    i32.and
                                    local.set 672
                                    local.get 672
                                    i32.eqz
                                    br_if 2 (;@14;)
                                  end
                                  i32.const 1
                                  local.set 673
                                  local.get 7
                                  local.get 673
                                  i32.store offset=20
                                  local.get 7
                                  i64.load offset=96
                                  local.set 674
                                  i64.const 9223372036854775807
                                  local.set 675
                                  local.get 674
                                  local.set 676
                                  local.get 675
                                  local.set 677
                                  local.get 676
                                  local.get 677
                                  i64.gt_u
                                  local.set 678
                                  i32.const 1
                                  local.set 679
                                  local.get 678
                                  local.get 679
                                  i32.and
                                  local.set 680
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 680
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      local.get 7
                                      i64.load offset=96
                                      local.set 681
                                      i64.const 0
                                      local.set 682
                                      local.get 682
                                      local.get 681
                                      i64.sub
                                      local.set 683
                                      local.get 7
                                      local.get 683
                                      i64.store offset=96
                                      br 1 (;@16;)
                                    end
                                    local.get 7
                                    i32.load offset=116
                                    local.set 684
                                    i32.const 2048
                                    local.set 685
                                    local.get 684
                                    local.get 685
                                    i32.and
                                    local.set 686
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 686
                                        i32.eqz
                                        br_if 0 (;@18;)
                                        local.get 7
                                        i32.load offset=28
                                        local.set 687
                                        i32.const 1
                                        local.set 688
                                        local.get 687
                                        local.get 688
                                        i32.add
                                        local.set 689
                                        local.get 7
                                        local.get 689
                                        i32.store offset=28
                                        br 1 (;@17;)
                                      end
                                      local.get 7
                                      i32.load offset=116
                                      local.set 690
                                      i32.const 1
                                      local.set 691
                                      local.get 690
                                      local.get 691
                                      i32.and
                                      local.set 692
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 692
                                          i32.eqz
                                          br_if 0 (;@19;)
                                          local.get 7
                                          i32.load offset=28
                                          local.set 693
                                          i32.const 2
                                          local.set 694
                                          local.get 693
                                          local.get 694
                                          i32.add
                                          local.set 695
                                          local.get 7
                                          local.get 695
                                          i32.store offset=28
                                          br 1 (;@18;)
                                        end
                                        i32.const 0
                                        local.set 696
                                        local.get 7
                                        local.get 696
                                        i32.store offset=20
                                      end
                                    end
                                  end
                                end
                                local.get 7
                                i64.load offset=96
                                local.set 697
                                local.get 7
                                i32.load offset=128
                                local.set 698
                                local.get 697
                                local.get 698
                                call $fmt_u
                                local.set 699
                                local.get 7
                                local.get 699
                                i32.store offset=132
                              end
                              local.get 7
                              i32.load offset=104
                              local.set 700
                              block  ;; label = @14
                                local.get 700
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 7
                                i32.load offset=108
                                local.set 701
                                i32.const 0
                                local.set 702
                                local.get 701
                                local.set 703
                                local.get 702
                                local.set 704
                                local.get 703
                                local.get 704
                                i32.lt_s
                                local.set 705
                                i32.const 1
                                local.set 706
                                local.get 705
                                local.get 706
                                i32.and
                                local.set 707
                                local.get 707
                                i32.eqz
                                br_if 0 (;@14;)
                                br 12 (;@2;)
                              end
                              local.get 7
                              i32.load offset=104
                              local.set 708
                              block  ;; label = @14
                                local.get 708
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 7
                                i32.load offset=116
                                local.set 709
                                i32.const -65537
                                local.set 710
                                local.get 709
                                local.get 710
                                i32.and
                                local.set 711
                                local.get 7
                                local.get 711
                                i32.store offset=116
                              end
                              local.get 7
                              i64.load offset=96
                              local.set 712
                              i64.const 0
                              local.set 713
                              local.get 712
                              local.set 714
                              local.get 713
                              local.set 715
                              local.get 714
                              local.get 715
                              i64.ne
                              local.set 716
                              i32.const 1
                              local.set 717
                              local.get 716
                              local.get 717
                              i32.and
                              local.set 718
                              block  ;; label = @14
                                local.get 718
                                br_if 0 (;@14;)
                                local.get 7
                                i32.load offset=108
                                local.set 719
                                local.get 719
                                br_if 0 (;@14;)
                                local.get 7
                                i32.load offset=128
                                local.set 720
                                local.get 7
                                local.get 720
                                i32.store offset=132
                                br 8 (;@6;)
                              end
                              local.get 7
                              i32.load offset=108
                              local.set 721
                              local.get 7
                              i32.load offset=128
                              local.set 722
                              local.get 7
                              i32.load offset=132
                              local.set 723
                              local.get 722
                              local.get 723
                              i32.sub
                              local.set 724
                              local.get 7
                              i64.load offset=96
                              local.set 725
                              i64.const 0
                              local.set 726
                              local.get 725
                              local.set 727
                              local.get 726
                              local.set 728
                              local.get 727
                              local.get 728
                              i64.ne
                              local.set 729
                              i32.const -1
                              local.set 730
                              local.get 729
                              local.get 730
                              i32.xor
                              local.set 731
                              i32.const 1
                              local.set 732
                              local.get 731
                              local.get 732
                              i32.and
                              local.set 733
                              local.get 724
                              local.get 733
                              i32.add
                              local.set 734
                              local.get 721
                              local.set 735
                              local.get 734
                              local.set 736
                              local.get 735
                              local.get 736
                              i32.gt_s
                              local.set 737
                              i32.const 1
                              local.set 738
                              local.get 737
                              local.get 738
                              i32.and
                              local.set 739
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 739
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 7
                                  i32.load offset=108
                                  local.set 740
                                  local.get 740
                                  local.set 741
                                  br 1 (;@14;)
                                end
                                local.get 7
                                i32.load offset=128
                                local.set 742
                                local.get 7
                                i32.load offset=132
                                local.set 743
                                local.get 742
                                local.get 743
                                i32.sub
                                local.set 744
                                local.get 7
                                i64.load offset=96
                                local.set 745
                                i64.const 0
                                local.set 746
                                local.get 745
                                local.set 747
                                local.get 746
                                local.set 748
                                local.get 747
                                local.get 748
                                i64.ne
                                local.set 749
                                i32.const -1
                                local.set 750
                                local.get 749
                                local.get 750
                                i32.xor
                                local.set 751
                                i32.const 1
                                local.set 752
                                local.get 751
                                local.get 752
                                i32.and
                                local.set 753
                                local.get 744
                                local.get 753
                                i32.add
                                local.set 754
                                local.get 754
                                local.set 741
                              end
                              local.get 741
                              local.set 755
                              local.get 7
                              local.get 755
                              i32.store offset=108
                              br 7 (;@6;)
                            end
                            local.get 7
                            i64.load offset=96
                            local.set 756
                            local.get 756
                            i32.wrap_i64
                            local.set 757
                            local.get 7
                            i32.load offset=128
                            local.set 758
                            i32.const 1
                            local.set 759
                            local.get 7
                            local.get 759
                            i32.store offset=108
                            i32.const -1
                            local.set 760
                            local.get 758
                            local.get 760
                            i32.add
                            local.set 761
                            local.get 7
                            local.get 761
                            i32.store offset=132
                            local.get 761
                            local.get 757
                            i32.store8
                            local.get 7
                            i32.load offset=116
                            local.set 762
                            i32.const -65537
                            local.set 763
                            local.get 762
                            local.get 763
                            i32.and
                            local.set 764
                            local.get 7
                            local.get 764
                            i32.store offset=116
                            br 6 (;@6;)
                          end
                          i32.const 1
                          local.set 765
                          i32.const 1
                          local.set 766
                          local.get 765
                          local.get 766
                          i32.and
                          local.set 767
                          block  ;; label = @12
                            local.get 767
                            i32.eqz
                            br_if 0 (;@12;)
                            i32.const 1024
                            local.set 768
                            global.get $__tls_base
                            local.set 769
                            local.get 769
                            local.get 768
                            i32.add
                            local.set 770
                            local.get 770
                            i32.load
                            local.set 771
                            local.get 771
                            call $strerror
                            local.set 772
                            local.get 7
                            local.get 772
                            i32.store offset=132
                            br 2 (;@10;)
                          end
                        end
                        local.get 7
                        i32.load offset=96
                        local.set 773
                        i32.const 0
                        local.set 774
                        local.get 773
                        local.set 775
                        local.get 774
                        local.set 776
                        local.get 775
                        local.get 776
                        i32.ne
                        local.set 777
                        i32.const 1
                        local.set 778
                        local.get 777
                        local.get 778
                        i32.and
                        local.set 779
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 779
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 7
                            i32.load offset=96
                            local.set 780
                            local.get 780
                            local.set 781
                            br 1 (;@11;)
                          end
                          i32.const 2959
                          local.set 782
                          local.get 782
                          local.set 781
                        end
                        local.get 781
                        local.set 783
                        local.get 7
                        local.get 783
                        i32.store offset=132
                      end
                      local.get 7
                      i32.load offset=132
                      local.set 784
                      local.get 7
                      i32.load offset=132
                      local.set 785
                      local.get 7
                      i32.load offset=108
                      local.set 786
                      i32.const 0
                      local.set 787
                      local.get 786
                      local.set 788
                      local.get 787
                      local.set 789
                      local.get 788
                      local.get 789
                      i32.lt_s
                      local.set 790
                      i32.const 1
                      local.set 791
                      local.get 790
                      local.get 791
                      i32.and
                      local.set 792
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 792
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 2147483647
                          local.set 793
                          local.get 793
                          local.set 794
                          br 1 (;@10;)
                        end
                        local.get 7
                        i32.load offset=108
                        local.set 795
                        local.get 795
                        local.set 794
                      end
                      local.get 794
                      local.set 796
                      local.get 785
                      local.get 796
                      call $strnlen
                      local.set 797
                      local.get 784
                      local.get 797
                      i32.add
                      local.set 798
                      local.get 7
                      local.get 798
                      i32.store offset=128
                      local.get 7
                      i32.load offset=108
                      local.set 799
                      i32.const 0
                      local.set 800
                      local.get 799
                      local.set 801
                      local.get 800
                      local.set 802
                      local.get 801
                      local.get 802
                      i32.lt_s
                      local.set 803
                      i32.const 1
                      local.set 804
                      local.get 803
                      local.get 804
                      i32.and
                      local.set 805
                      block  ;; label = @10
                        local.get 805
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 7
                        i32.load offset=128
                        local.set 806
                        local.get 806
                        i32.load8_u
                        local.set 807
                        i32.const 24
                        local.set 808
                        local.get 807
                        local.get 808
                        i32.shl
                        local.set 809
                        local.get 809
                        local.get 808
                        i32.shr_s
                        local.set 810
                        local.get 810
                        i32.eqz
                        br_if 0 (;@10;)
                        br 8 (;@2;)
                      end
                      local.get 7
                      i32.load offset=128
                      local.set 811
                      local.get 7
                      i32.load offset=132
                      local.set 812
                      local.get 811
                      local.get 812
                      i32.sub
                      local.set 813
                      local.get 7
                      local.get 813
                      i32.store offset=108
                      local.get 7
                      i32.load offset=116
                      local.set 814
                      i32.const -65537
                      local.set 815
                      local.get 814
                      local.get 815
                      i32.and
                      local.set 816
                      local.get 7
                      local.get 816
                      i32.store offset=116
                      br 3 (;@6;)
                    end
                    local.get 7
                    i64.load offset=96
                    local.set 817
                    local.get 817
                    i32.wrap_i64
                    local.set 818
                    local.get 7
                    local.get 818
                    i32.store offset=12
                    i32.const 0
                    local.set 819
                    local.get 7
                    local.get 819
                    i32.store offset=16
                    i32.const 12
                    local.set 820
                    local.get 7
                    local.get 820
                    i32.add
                    local.set 821
                    local.get 821
                    local.set 822
                    local.get 7
                    local.get 822
                    i32.store offset=96
                    i32.const -1
                    local.set 823
                    local.get 7
                    local.get 823
                    i32.store offset=108
                  end
                  local.get 7
                  i32.load offset=96
                  local.set 824
                  local.get 7
                  local.get 824
                  i32.store offset=8
                  i32.const 0
                  local.set 825
                  local.get 7
                  local.get 825
                  i32.store offset=76
                  i32.const 0
                  local.set 826
                  local.get 7
                  local.get 826
                  i32.store offset=72
                  loop  ;; label = @8
                    local.get 7
                    i32.load offset=72
                    local.set 827
                    local.get 7
                    i32.load offset=108
                    local.set 828
                    local.get 827
                    local.set 829
                    local.get 828
                    local.set 830
                    local.get 829
                    local.get 830
                    i32.lt_u
                    local.set 831
                    i32.const 0
                    local.set 832
                    i32.const 1
                    local.set 833
                    local.get 831
                    local.get 833
                    i32.and
                    local.set 834
                    local.get 832
                    local.set 835
                    block  ;; label = @9
                      local.get 834
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 7
                      i32.load offset=8
                      local.set 836
                      local.get 836
                      i32.load
                      local.set 837
                      i32.const 0
                      local.set 838
                      local.get 838
                      local.set 835
                      local.get 837
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 4
                      local.set 839
                      local.get 7
                      local.get 839
                      i32.add
                      local.set 840
                      local.get 840
                      local.set 841
                      local.get 7
                      i32.load offset=8
                      local.set 842
                      i32.const 4
                      local.set 843
                      local.get 842
                      local.get 843
                      i32.add
                      local.set 844
                      local.get 7
                      local.get 844
                      i32.store offset=8
                      local.get 842
                      i32.load
                      local.set 845
                      local.get 841
                      local.get 845
                      call $wctomb
                      local.set 846
                      local.get 7
                      local.get 846
                      i32.store offset=76
                      i32.const 0
                      local.set 847
                      local.get 846
                      local.set 848
                      local.get 847
                      local.set 849
                      local.get 848
                      local.get 849
                      i32.ge_s
                      local.set 850
                      i32.const 0
                      local.set 851
                      i32.const 1
                      local.set 852
                      local.get 850
                      local.get 852
                      i32.and
                      local.set 853
                      local.get 851
                      local.set 835
                      local.get 853
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 7
                      i32.load offset=76
                      local.set 854
                      local.get 7
                      i32.load offset=108
                      local.set 855
                      local.get 7
                      i32.load offset=72
                      local.set 856
                      local.get 855
                      local.get 856
                      i32.sub
                      local.set 857
                      local.get 854
                      local.set 858
                      local.get 857
                      local.set 859
                      local.get 858
                      local.get 859
                      i32.le_u
                      local.set 860
                      local.get 860
                      local.set 835
                    end
                    local.get 835
                    local.set 861
                    i32.const 1
                    local.set 862
                    local.get 861
                    local.get 862
                    i32.and
                    local.set 863
                    block  ;; label = @9
                      local.get 863
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 7
                      i32.load offset=76
                      local.set 864
                      local.get 7
                      i32.load offset=72
                      local.set 865
                      local.get 865
                      local.get 864
                      i32.add
                      local.set 866
                      local.get 7
                      local.get 866
                      i32.store offset=72
                      br 1 (;@8;)
                    end
                  end
                  local.get 7
                  i32.load offset=76
                  local.set 867
                  i32.const 0
                  local.set 868
                  local.get 867
                  local.set 869
                  local.get 868
                  local.set 870
                  local.get 869
                  local.get 870
                  i32.lt_s
                  local.set 871
                  i32.const 1
                  local.set 872
                  local.get 871
                  local.get 872
                  i32.and
                  local.set 873
                  block  ;; label = @8
                    local.get 873
                    i32.eqz
                    br_if 0 (;@8;)
                    i32.const -1
                    local.set 874
                    local.get 7
                    local.get 874
                    i32.store offset=156
                    br 7 (;@1;)
                  end
                  local.get 7
                  i32.load offset=72
                  local.set 875
                  i32.const 2147483647
                  local.set 876
                  local.get 875
                  local.set 877
                  local.get 876
                  local.set 878
                  local.get 877
                  local.get 878
                  i32.gt_u
                  local.set 879
                  i32.const 1
                  local.set 880
                  local.get 879
                  local.get 880
                  i32.and
                  local.set 881
                  block  ;; label = @8
                    local.get 881
                    i32.eqz
                    br_if 0 (;@8;)
                    br 6 (;@2;)
                  end
                  local.get 7
                  i32.load offset=72
                  local.set 882
                  local.get 7
                  local.get 882
                  i32.store offset=108
                  local.get 7
                  i32.load offset=152
                  local.set 883
                  local.get 7
                  i32.load offset=112
                  local.set 884
                  local.get 7
                  i32.load offset=108
                  local.set 885
                  local.get 7
                  i32.load offset=116
                  local.set 886
                  i32.const 32
                  local.set 887
                  i32.const 24
                  local.set 888
                  local.get 887
                  local.get 888
                  i32.shl
                  local.set 889
                  local.get 889
                  local.get 888
                  i32.shr_s
                  local.set 890
                  local.get 883
                  local.get 890
                  local.get 884
                  local.get 885
                  local.get 886
                  call $pad
                  local.get 7
                  i32.load offset=96
                  local.set 891
                  local.get 7
                  local.get 891
                  i32.store offset=8
                  i32.const 0
                  local.set 892
                  local.get 7
                  local.get 892
                  i32.store offset=72
                  loop  ;; label = @8
                    local.get 7
                    i32.load offset=72
                    local.set 893
                    local.get 7
                    i32.load offset=108
                    local.set 894
                    i32.const 0
                    local.set 895
                    local.get 894
                    local.get 895
                    i32.add
                    local.set 896
                    local.get 893
                    local.set 897
                    local.get 896
                    local.set 898
                    local.get 897
                    local.get 898
                    i32.lt_u
                    local.set 899
                    i32.const 0
                    local.set 900
                    i32.const 1
                    local.set 901
                    local.get 899
                    local.get 901
                    i32.and
                    local.set 902
                    local.get 900
                    local.set 903
                    block  ;; label = @9
                      local.get 902
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 7
                      i32.load offset=8
                      local.set 904
                      local.get 904
                      i32.load
                      local.set 905
                      i32.const 0
                      local.set 906
                      local.get 906
                      local.set 903
                      local.get 905
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 7
                      i32.load offset=72
                      local.set 907
                      i32.const 4
                      local.set 908
                      local.get 7
                      local.get 908
                      i32.add
                      local.set 909
                      local.get 909
                      local.set 910
                      local.get 7
                      i32.load offset=8
                      local.set 911
                      i32.const 4
                      local.set 912
                      local.get 911
                      local.get 912
                      i32.add
                      local.set 913
                      local.get 7
                      local.get 913
                      i32.store offset=8
                      local.get 911
                      i32.load
                      local.set 914
                      local.get 910
                      local.get 914
                      call $wctomb
                      local.set 915
                      local.get 7
                      local.get 915
                      i32.store offset=76
                      local.get 907
                      local.get 915
                      i32.add
                      local.set 916
                      local.get 7
                      i32.load offset=108
                      local.set 917
                      local.get 916
                      local.set 918
                      local.get 917
                      local.set 919
                      local.get 918
                      local.get 919
                      i32.le_u
                      local.set 920
                      local.get 920
                      local.set 903
                    end
                    local.get 903
                    local.set 921
                    i32.const 1
                    local.set 922
                    local.get 921
                    local.get 922
                    i32.and
                    local.set 923
                    block  ;; label = @9
                      local.get 923
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 7
                      i32.load offset=152
                      local.set 924
                      i32.const 4
                      local.set 925
                      local.get 7
                      local.get 925
                      i32.add
                      local.set 926
                      local.get 926
                      local.set 927
                      local.get 7
                      i32.load offset=76
                      local.set 928
                      local.get 924
                      local.get 927
                      local.get 928
                      call $out
                      local.get 7
                      i32.load offset=76
                      local.set 929
                      local.get 7
                      i32.load offset=72
                      local.set 930
                      local.get 930
                      local.get 929
                      i32.add
                      local.set 931
                      local.get 7
                      local.get 931
                      i32.store offset=72
                      br 1 (;@8;)
                    end
                  end
                  local.get 7
                  i32.load offset=152
                  local.set 932
                  local.get 7
                  i32.load offset=112
                  local.set 933
                  local.get 7
                  i32.load offset=108
                  local.set 934
                  local.get 7
                  i32.load offset=116
                  local.set 935
                  i32.const 8192
                  local.set 936
                  local.get 935
                  local.get 936
                  i32.xor
                  local.set 937
                  i32.const 32
                  local.set 938
                  i32.const 24
                  local.set 939
                  local.get 938
                  local.get 939
                  i32.shl
                  local.set 940
                  local.get 940
                  local.get 939
                  i32.shr_s
                  local.set 941
                  local.get 932
                  local.get 941
                  local.get 933
                  local.get 934
                  local.get 937
                  call $pad
                  local.get 7
                  i32.load offset=112
                  local.set 942
                  local.get 7
                  i32.load offset=108
                  local.set 943
                  local.get 942
                  local.set 944
                  local.get 943
                  local.set 945
                  local.get 944
                  local.get 945
                  i32.gt_s
                  local.set 946
                  i32.const 1
                  local.set 947
                  local.get 946
                  local.get 947
                  i32.and
                  local.set 948
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 948
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 7
                      i32.load offset=112
                      local.set 949
                      local.get 949
                      local.set 950
                      br 1 (;@8;)
                    end
                    local.get 7
                    i32.load offset=108
                    local.set 951
                    local.get 951
                    local.set 950
                  end
                  local.get 950
                  local.set 952
                  local.get 7
                  local.get 952
                  i32.store offset=76
                  br 3 (;@4;)
                end
                local.get 7
                i32.load offset=104
                local.set 953
                block  ;; label = @7
                  local.get 953
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 7
                  i32.load offset=108
                  local.set 954
                  i32.const 0
                  local.set 955
                  local.get 954
                  local.set 956
                  local.get 955
                  local.set 957
                  local.get 956
                  local.get 957
                  i32.lt_s
                  local.set 958
                  i32.const 1
                  local.set 959
                  local.get 958
                  local.get 959
                  i32.and
                  local.set 960
                  local.get 960
                  i32.eqz
                  br_if 0 (;@7;)
                  br 5 (;@2;)
                end
                local.get 7
                i32.load offset=152
                local.set 961
                local.get 7
                f64.load offset=96
                local.set 962
                local.get 7
                i32.load offset=112
                local.set 963
                local.get 7
                i32.load offset=108
                local.set 964
                local.get 7
                i32.load offset=116
                local.set 965
                local.get 7
                i32.load offset=24
                local.set 966
                local.get 961
                local.get 962
                local.get 963
                local.get 964
                local.get 965
                local.get 966
                call $fmt_fp
                local.set 967
                local.get 7
                local.get 967
                i32.store offset=76
                local.get 7
                i32.load offset=76
                local.set 968
                i32.const 0
                local.set 969
                local.get 968
                local.set 970
                local.get 969
                local.set 971
                local.get 970
                local.get 971
                i32.lt_s
                local.set 972
                i32.const 1
                local.set 973
                local.get 972
                local.get 973
                i32.and
                local.set 974
                block  ;; label = @7
                  local.get 974
                  i32.eqz
                  br_if 0 (;@7;)
                  br 5 (;@2;)
                end
                br 2 (;@4;)
              end
              local.get 7
              i32.load offset=108
              local.set 975
              local.get 7
              i32.load offset=128
              local.set 976
              local.get 7
              i32.load offset=132
              local.set 977
              local.get 976
              local.get 977
              i32.sub
              local.set 978
              local.get 975
              local.set 979
              local.get 978
              local.set 980
              local.get 979
              local.get 980
              i32.lt_s
              local.set 981
              i32.const 1
              local.set 982
              local.get 981
              local.get 982
              i32.and
              local.set 983
              block  ;; label = @6
                local.get 983
                i32.eqz
                br_if 0 (;@6;)
                local.get 7
                i32.load offset=128
                local.set 984
                local.get 7
                i32.load offset=132
                local.set 985
                local.get 984
                local.get 985
                i32.sub
                local.set 986
                local.get 7
                local.get 986
                i32.store offset=108
              end
              local.get 7
              i32.load offset=108
              local.set 987
              local.get 7
              i32.load offset=20
              local.set 988
              i32.const 2147483647
              local.set 989
              local.get 989
              local.get 988
              i32.sub
              local.set 990
              local.get 987
              local.set 991
              local.get 990
              local.set 992
              local.get 991
              local.get 992
              i32.gt_s
              local.set 993
              i32.const 1
              local.set 994
              local.get 993
              local.get 994
              i32.and
              local.set 995
              block  ;; label = @6
                local.get 995
                i32.eqz
                br_if 0 (;@6;)
                br 4 (;@2;)
              end
              local.get 7
              i32.load offset=112
              local.set 996
              local.get 7
              i32.load offset=20
              local.set 997
              local.get 7
              i32.load offset=108
              local.set 998
              local.get 997
              local.get 998
              i32.add
              local.set 999
              local.get 996
              local.set 1000
              local.get 999
              local.set 1001
              local.get 1000
              local.get 1001
              i32.lt_s
              local.set 1002
              i32.const 1
              local.set 1003
              local.get 1002
              local.get 1003
              i32.and
              local.set 1004
              block  ;; label = @6
                local.get 1004
                i32.eqz
                br_if 0 (;@6;)
                local.get 7
                i32.load offset=20
                local.set 1005
                local.get 7
                i32.load offset=108
                local.set 1006
                local.get 1005
                local.get 1006
                i32.add
                local.set 1007
                local.get 7
                local.get 1007
                i32.store offset=112
              end
              local.get 7
              i32.load offset=112
              local.set 1008
              local.get 7
              i32.load offset=80
              local.set 1009
              i32.const 2147483647
              local.set 1010
              local.get 1010
              local.get 1009
              i32.sub
              local.set 1011
              local.get 1008
              local.set 1012
              local.get 1011
              local.set 1013
              local.get 1012
              local.get 1013
              i32.gt_s
              local.set 1014
              i32.const 1
              local.set 1015
              local.get 1014
              local.get 1015
              i32.and
              local.set 1016
              block  ;; label = @6
                local.get 1016
                i32.eqz
                br_if 0 (;@6;)
                br 4 (;@2;)
              end
              local.get 7
              i32.load offset=152
              local.set 1017
              local.get 7
              i32.load offset=112
              local.set 1018
              local.get 7
              i32.load offset=20
              local.set 1019
              local.get 7
              i32.load offset=108
              local.set 1020
              local.get 1019
              local.get 1020
              i32.add
              local.set 1021
              local.get 7
              i32.load offset=116
              local.set 1022
              i32.const 32
              local.set 1023
              i32.const 24
              local.set 1024
              local.get 1023
              local.get 1024
              i32.shl
              local.set 1025
              local.get 1025
              local.get 1024
              i32.shr_s
              local.set 1026
              local.get 1017
              local.get 1026
              local.get 1018
              local.get 1021
              local.get 1022
              call $pad
              local.get 7
              i32.load offset=152
              local.set 1027
              local.get 7
              i32.load offset=28
              local.set 1028
              local.get 7
              i32.load offset=20
              local.set 1029
              local.get 1027
              local.get 1028
              local.get 1029
              call $out
              local.get 7
              i32.load offset=152
              local.set 1030
              local.get 7
              i32.load offset=112
              local.set 1031
              local.get 7
              i32.load offset=20
              local.set 1032
              local.get 7
              i32.load offset=108
              local.set 1033
              local.get 1032
              local.get 1033
              i32.add
              local.set 1034
              local.get 7
              i32.load offset=116
              local.set 1035
              i32.const 65536
              local.set 1036
              local.get 1035
              local.get 1036
              i32.xor
              local.set 1037
              i32.const 48
              local.set 1038
              i32.const 24
              local.set 1039
              local.get 1038
              local.get 1039
              i32.shl
              local.set 1040
              local.get 1040
              local.get 1039
              i32.shr_s
              local.set 1041
              local.get 1030
              local.get 1041
              local.get 1031
              local.get 1034
              local.get 1037
              call $pad
              local.get 7
              i32.load offset=152
              local.set 1042
              local.get 7
              i32.load offset=108
              local.set 1043
              local.get 7
              i32.load offset=128
              local.set 1044
              local.get 7
              i32.load offset=132
              local.set 1045
              local.get 1044
              local.get 1045
              i32.sub
              local.set 1046
              i32.const 48
              local.set 1047
              i32.const 0
              local.set 1048
              i32.const 24
              local.set 1049
              local.get 1047
              local.get 1049
              i32.shl
              local.set 1050
              local.get 1050
              local.get 1049
              i32.shr_s
              local.set 1051
              local.get 1042
              local.get 1051
              local.get 1043
              local.get 1046
              local.get 1048
              call $pad
              local.get 7
              i32.load offset=152
              local.set 1052
              local.get 7
              i32.load offset=132
              local.set 1053
              local.get 7
              i32.load offset=128
              local.set 1054
              local.get 7
              i32.load offset=132
              local.set 1055
              local.get 1054
              local.get 1055
              i32.sub
              local.set 1056
              local.get 1052
              local.get 1053
              local.get 1056
              call $out
              local.get 7
              i32.load offset=152
              local.set 1057
              local.get 7
              i32.load offset=112
              local.set 1058
              local.get 7
              i32.load offset=20
              local.set 1059
              local.get 7
              i32.load offset=108
              local.set 1060
              local.get 1059
              local.get 1060
              i32.add
              local.set 1061
              local.get 7
              i32.load offset=116
              local.set 1062
              i32.const 8192
              local.set 1063
              local.get 1062
              local.get 1063
              i32.xor
              local.set 1064
              i32.const 32
              local.set 1065
              i32.const 24
              local.set 1066
              local.get 1065
              local.get 1066
              i32.shl
              local.set 1067
              local.get 1067
              local.get 1066
              i32.shr_s
              local.set 1068
              local.get 1057
              local.get 1068
              local.get 1058
              local.get 1061
              local.get 1064
              call $pad
              local.get 7
              i32.load offset=112
              local.set 1069
              local.get 7
              local.get 1069
              i32.store offset=76
              br 1 (;@4;)
            end
          end
          local.get 7
          i32.load offset=152
          local.set 1070
          i32.const 0
          local.set 1071
          local.get 1070
          local.set 1072
          local.get 1071
          local.set 1073
          local.get 1072
          local.get 1073
          i32.ne
          local.set 1074
          i32.const 1
          local.set 1075
          local.get 1074
          local.get 1075
          i32.and
          local.set 1076
          block  ;; label = @4
            local.get 1076
            i32.eqz
            br_if 0 (;@4;)
            local.get 7
            i32.load offset=80
            local.set 1077
            local.get 7
            local.get 1077
            i32.store offset=156
            br 3 (;@1;)
          end
          local.get 7
          i32.load offset=120
          local.set 1078
          block  ;; label = @4
            local.get 1078
            br_if 0 (;@4;)
            i32.const 0
            local.set 1079
            local.get 7
            local.get 1079
            i32.store offset=156
            br 3 (;@1;)
          end
          i32.const 1
          local.set 1080
          local.get 7
          local.get 1080
          i32.store offset=72
          loop  ;; label = @4
            local.get 7
            i32.load offset=72
            local.set 1081
            i32.const 9
            local.set 1082
            local.get 1081
            local.set 1083
            local.get 1082
            local.set 1084
            local.get 1083
            local.get 1084
            i32.le_u
            local.set 1085
            i32.const 0
            local.set 1086
            i32.const 1
            local.set 1087
            local.get 1085
            local.get 1087
            i32.and
            local.set 1088
            local.get 1086
            local.set 1089
            block  ;; label = @5
              local.get 1088
              i32.eqz
              br_if 0 (;@5;)
              local.get 7
              i32.load offset=136
              local.set 1090
              local.get 7
              i32.load offset=72
              local.set 1091
              i32.const 2
              local.set 1092
              local.get 1091
              local.get 1092
              i32.shl
              local.set 1093
              local.get 1090
              local.get 1093
              i32.add
              local.set 1094
              local.get 1094
              i32.load
              local.set 1095
              i32.const 0
              local.set 1096
              local.get 1095
              local.set 1097
              local.get 1096
              local.set 1098
              local.get 1097
              local.get 1098
              i32.ne
              local.set 1099
              local.get 1099
              local.set 1089
            end
            local.get 1089
            local.set 1100
            i32.const 1
            local.set 1101
            local.get 1100
            local.get 1101
            i32.and
            local.set 1102
            block  ;; label = @5
              local.get 1102
              i32.eqz
              br_if 0 (;@5;)
              local.get 7
              i32.load offset=140
              local.set 1103
              local.get 7
              i32.load offset=72
              local.set 1104
              i32.const 3
              local.set 1105
              local.get 1104
              local.get 1105
              i32.shl
              local.set 1106
              local.get 1103
              local.get 1106
              i32.add
              local.set 1107
              local.get 7
              i32.load offset=136
              local.set 1108
              local.get 7
              i32.load offset=72
              local.set 1109
              i32.const 2
              local.set 1110
              local.get 1109
              local.get 1110
              i32.shl
              local.set 1111
              local.get 1108
              local.get 1111
              i32.add
              local.set 1112
              local.get 1112
              i32.load
              local.set 1113
              local.get 7
              i32.load offset=144
              local.set 1114
              local.get 1107
              local.get 1113
              local.get 1114
              call $pop_arg
              local.get 7
              i32.load offset=72
              local.set 1115
              i32.const 1
              local.set 1116
              local.get 1115
              local.get 1116
              i32.add
              local.set 1117
              local.get 7
              local.get 1117
              i32.store offset=72
              br 1 (;@4;)
            end
          end
          loop  ;; label = @4
            local.get 7
            i32.load offset=72
            local.set 1118
            i32.const 9
            local.set 1119
            local.get 1118
            local.set 1120
            local.get 1119
            local.set 1121
            local.get 1120
            local.get 1121
            i32.le_u
            local.set 1122
            i32.const 0
            local.set 1123
            i32.const 1
            local.set 1124
            local.get 1122
            local.get 1124
            i32.and
            local.set 1125
            local.get 1123
            local.set 1126
            block  ;; label = @5
              local.get 1125
              i32.eqz
              br_if 0 (;@5;)
              local.get 7
              i32.load offset=136
              local.set 1127
              local.get 7
              i32.load offset=72
              local.set 1128
              i32.const 2
              local.set 1129
              local.get 1128
              local.get 1129
              i32.shl
              local.set 1130
              local.get 1127
              local.get 1130
              i32.add
              local.set 1131
              local.get 1131
              i32.load
              local.set 1132
              i32.const 0
              local.set 1133
              local.get 1132
              local.set 1134
              local.get 1133
              local.set 1135
              local.get 1134
              local.get 1135
              i32.ne
              local.set 1136
              i32.const -1
              local.set 1137
              local.get 1136
              local.get 1137
              i32.xor
              local.set 1138
              local.get 1138
              local.set 1126
            end
            local.get 1126
            local.set 1139
            i32.const 1
            local.set 1140
            local.get 1139
            local.get 1140
            i32.and
            local.set 1141
            block  ;; label = @5
              local.get 1141
              i32.eqz
              br_if 0 (;@5;)
              local.get 7
              i32.load offset=72
              local.set 1142
              i32.const 1
              local.set 1143
              local.get 1142
              local.get 1143
              i32.add
              local.set 1144
              local.get 7
              local.get 1144
              i32.store offset=72
              br 1 (;@4;)
            end
          end
          local.get 7
          i32.load offset=72
          local.set 1145
          i32.const 9
          local.set 1146
          local.get 1145
          local.set 1147
          local.get 1146
          local.set 1148
          local.get 1147
          local.get 1148
          i32.le_u
          local.set 1149
          i32.const 1
          local.set 1150
          local.get 1149
          local.get 1150
          i32.and
          local.set 1151
          block  ;; label = @4
            local.get 1151
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          i32.const 1
          local.set 1152
          local.get 7
          local.get 1152
          i32.store offset=156
          br 2 (;@1;)
        end
        i32.const 1024
        local.set 1153
        global.get $__tls_base
        local.set 1154
        local.get 1154
        local.get 1153
        i32.add
        local.set 1155
        i32.const 28
        local.set 1156
        local.get 1155
        local.get 1156
        i32.store
        i32.const -1
        local.set 1157
        local.get 7
        local.get 1157
        i32.store offset=156
        br 1 (;@1;)
      end
      i32.const 1024
      local.set 1158
      global.get $__tls_base
      local.set 1159
      local.get 1159
      local.get 1158
      i32.add
      local.set 1160
      i32.const 61
      local.set 1161
      local.get 1160
      local.get 1161
      i32.store
      i32.const -1
      local.set 1162
      local.get 7
      local.get 1162
      i32.store offset=156
    end
    local.get 7
    i32.load offset=156
    local.set 1163
    i32.const 160
    local.set 1164
    local.get 7
    local.get 1164
    i32.add
    local.set 1165
    local.get 1165
    global.set $__stack_pointer
    local.get 1163
    return)
  (func $out (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    local.get 5
    local.get 2
    i32.store offset=4
    local.get 5
    i32.load offset=12
    local.set 6
    local.get 6
    i32.load
    local.set 7
    i32.const 32
    local.set 8
    local.get 7
    local.get 8
    i32.and
    local.set 9
    block  ;; label = @1
      local.get 9
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=8
      local.set 10
      local.get 5
      i32.load offset=4
      local.set 11
      local.get 5
      i32.load offset=12
      local.set 12
      local.get 10
      local.get 11
      local.get 12
      call $__fwritex
      drop
    end
    i32.const 16
    local.set 13
    local.get 5
    local.get 13
    i32.add
    local.set 14
    local.get 14
    global.set $__stack_pointer
    return)
  (func $getint (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=12
    i32.const 0
    local.set 4
    local.get 3
    local.get 4
    i32.store offset=8
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.load offset=12
        local.set 5
        local.get 5
        i32.load
        local.set 6
        local.get 6
        i32.load8_u
        local.set 7
        i32.const 24
        local.set 8
        local.get 7
        local.get 8
        i32.shl
        local.set 9
        local.get 9
        local.get 8
        i32.shr_s
        local.set 10
        i32.const 48
        local.set 11
        local.get 10
        local.get 11
        i32.sub
        local.set 12
        i32.const 10
        local.set 13
        local.get 12
        local.set 14
        local.get 13
        local.set 15
        local.get 14
        local.get 15
        i32.lt_u
        local.set 16
        i32.const 1
        local.set 17
        local.get 16
        local.get 17
        i32.and
        local.set 18
        local.get 18
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=8
        local.set 19
        i32.const 214748364
        local.set 20
        local.get 19
        local.set 21
        local.get 20
        local.set 22
        local.get 21
        local.get 22
        i32.gt_u
        local.set 23
        i32.const 1
        local.set 24
        local.get 23
        local.get 24
        i32.and
        local.set 25
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 25
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=12
              local.set 26
              local.get 26
              i32.load
              local.set 27
              local.get 27
              i32.load8_u
              local.set 28
              i32.const 24
              local.set 29
              local.get 28
              local.get 29
              i32.shl
              local.set 30
              local.get 30
              local.get 29
              i32.shr_s
              local.set 31
              i32.const 48
              local.set 32
              local.get 31
              local.get 32
              i32.sub
              local.set 33
              local.get 3
              i32.load offset=8
              local.set 34
              i32.const 10
              local.set 35
              local.get 34
              local.get 35
              i32.mul
              local.set 36
              i32.const 2147483647
              local.set 37
              local.get 37
              local.get 36
              i32.sub
              local.set 38
              local.get 33
              local.set 39
              local.get 38
              local.set 40
              local.get 39
              local.get 40
              i32.gt_s
              local.set 41
              i32.const 1
              local.set 42
              local.get 41
              local.get 42
              i32.and
              local.set 43
              local.get 43
              i32.eqz
              br_if 1 (;@4;)
            end
            i32.const -1
            local.set 44
            local.get 3
            local.get 44
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 3
          i32.load offset=8
          local.set 45
          i32.const 10
          local.set 46
          local.get 45
          local.get 46
          i32.mul
          local.set 47
          local.get 3
          i32.load offset=12
          local.set 48
          local.get 48
          i32.load
          local.set 49
          local.get 49
          i32.load8_u
          local.set 50
          i32.const 24
          local.set 51
          local.get 50
          local.get 51
          i32.shl
          local.set 52
          local.get 52
          local.get 51
          i32.shr_s
          local.set 53
          i32.const 48
          local.set 54
          local.get 53
          local.get 54
          i32.sub
          local.set 55
          local.get 47
          local.get 55
          i32.add
          local.set 56
          local.get 3
          local.get 56
          i32.store offset=8
        end
        local.get 3
        i32.load offset=12
        local.set 57
        local.get 57
        i32.load
        local.set 58
        i32.const 1
        local.set 59
        local.get 58
        local.get 59
        i32.add
        local.set 60
        local.get 57
        local.get 60
        i32.store
        br 0 (;@2;)
      end
    end
    local.get 3
    i32.load offset=8
    local.set 61
    local.get 61
    return)
  (func $pop_arg (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    local.get 5
    local.get 2
    i32.store offset=4
    local.get 5
    i32.load offset=8
    local.set 6
    i32.const -9
    local.set 7
    local.get 6
    local.get 7
    i32.add
    local.set 8
    i32.const 17
    local.set 9
    local.get 8
    local.get 9
    i32.gt_u
    drop
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 8
                                          br_table 0 (;@19;) 1 (;@18;) 2 (;@17;) 5 (;@14;) 3 (;@16;) 4 (;@15;) 6 (;@13;) 7 (;@12;) 8 (;@11;) 9 (;@10;) 10 (;@9;) 11 (;@8;) 12 (;@7;) 13 (;@6;) 14 (;@5;) 15 (;@4;) 16 (;@3;) 17 (;@2;) 18 (;@1;)
                                        end
                                        local.get 5
                                        i32.load offset=4
                                        local.set 10
                                        local.get 10
                                        i32.load
                                        local.set 11
                                        i32.const 4
                                        local.set 12
                                        local.get 11
                                        local.get 12
                                        i32.add
                                        local.set 13
                                        local.get 10
                                        local.get 13
                                        i32.store
                                        local.get 11
                                        i32.load
                                        local.set 14
                                        local.get 5
                                        i32.load offset=12
                                        local.set 15
                                        local.get 15
                                        local.get 14
                                        i32.store
                                        br 17 (;@1;)
                                      end
                                      local.get 5
                                      i32.load offset=4
                                      local.set 16
                                      local.get 16
                                      i32.load
                                      local.set 17
                                      i32.const 4
                                      local.set 18
                                      local.get 17
                                      local.get 18
                                      i32.add
                                      local.set 19
                                      local.get 16
                                      local.get 19
                                      i32.store
                                      local.get 17
                                      i32.load
                                      local.set 20
                                      local.get 20
                                      local.set 21
                                      local.get 21
                                      i64.extend_i32_s
                                      local.set 22
                                      local.get 5
                                      i32.load offset=12
                                      local.set 23
                                      local.get 23
                                      local.get 22
                                      i64.store
                                      br 16 (;@1;)
                                    end
                                    local.get 5
                                    i32.load offset=4
                                    local.set 24
                                    local.get 24
                                    i32.load
                                    local.set 25
                                    i32.const 4
                                    local.set 26
                                    local.get 25
                                    local.get 26
                                    i32.add
                                    local.set 27
                                    local.get 24
                                    local.get 27
                                    i32.store
                                    local.get 25
                                    i32.load
                                    local.set 28
                                    local.get 28
                                    local.set 29
                                    local.get 29
                                    i64.extend_i32_u
                                    local.set 30
                                    local.get 5
                                    i32.load offset=12
                                    local.set 31
                                    local.get 31
                                    local.get 30
                                    i64.store
                                    br 15 (;@1;)
                                  end
                                  local.get 5
                                  i32.load offset=4
                                  local.set 32
                                  local.get 32
                                  i32.load
                                  local.set 33
                                  i32.const 4
                                  local.set 34
                                  local.get 33
                                  local.get 34
                                  i32.add
                                  local.set 35
                                  local.get 32
                                  local.get 35
                                  i32.store
                                  local.get 33
                                  i32.load
                                  local.set 36
                                  local.get 36
                                  local.set 37
                                  local.get 37
                                  i64.extend_i32_s
                                  local.set 38
                                  local.get 5
                                  i32.load offset=12
                                  local.set 39
                                  local.get 39
                                  local.get 38
                                  i64.store
                                  br 14 (;@1;)
                                end
                                local.get 5
                                i32.load offset=4
                                local.set 40
                                local.get 40
                                i32.load
                                local.set 41
                                i32.const 4
                                local.set 42
                                local.get 41
                                local.get 42
                                i32.add
                                local.set 43
                                local.get 40
                                local.get 43
                                i32.store
                                local.get 41
                                i32.load
                                local.set 44
                                local.get 44
                                local.set 45
                                local.get 45
                                i64.extend_i32_u
                                local.set 46
                                local.get 5
                                i32.load offset=12
                                local.set 47
                                local.get 47
                                local.get 46
                                i64.store
                                br 13 (;@1;)
                              end
                              local.get 5
                              i32.load offset=4
                              local.set 48
                              local.get 48
                              i32.load
                              local.set 49
                              i32.const 7
                              local.set 50
                              local.get 49
                              local.get 50
                              i32.add
                              local.set 51
                              i32.const -8
                              local.set 52
                              local.get 51
                              local.get 52
                              i32.and
                              local.set 53
                              i32.const 8
                              local.set 54
                              local.get 53
                              local.get 54
                              i32.add
                              local.set 55
                              local.get 48
                              local.get 55
                              i32.store
                              local.get 53
                              i64.load
                              local.set 56
                              local.get 5
                              i32.load offset=12
                              local.set 57
                              local.get 57
                              local.get 56
                              i64.store
                              br 12 (;@1;)
                            end
                            local.get 5
                            i32.load offset=4
                            local.set 58
                            local.get 58
                            i32.load
                            local.set 59
                            i32.const 4
                            local.set 60
                            local.get 59
                            local.get 60
                            i32.add
                            local.set 61
                            local.get 58
                            local.get 61
                            i32.store
                            local.get 59
                            i32.load
                            local.set 62
                            i32.const 16
                            local.set 63
                            local.get 62
                            local.get 63
                            i32.shl
                            local.set 64
                            local.get 64
                            local.get 63
                            i32.shr_s
                            local.set 65
                            local.get 65
                            i64.extend_i32_s
                            local.set 66
                            local.get 5
                            i32.load offset=12
                            local.set 67
                            local.get 67
                            local.get 66
                            i64.store
                            br 11 (;@1;)
                          end
                          local.get 5
                          i32.load offset=4
                          local.set 68
                          local.get 68
                          i32.load
                          local.set 69
                          i32.const 4
                          local.set 70
                          local.get 69
                          local.get 70
                          i32.add
                          local.set 71
                          local.get 68
                          local.get 71
                          i32.store
                          local.get 69
                          i32.load
                          local.set 72
                          i32.const 65535
                          local.set 73
                          local.get 72
                          local.get 73
                          i32.and
                          local.set 74
                          local.get 74
                          i64.extend_i32_u
                          local.set 75
                          local.get 5
                          i32.load offset=12
                          local.set 76
                          local.get 76
                          local.get 75
                          i64.store
                          br 10 (;@1;)
                        end
                        local.get 5
                        i32.load offset=4
                        local.set 77
                        local.get 77
                        i32.load
                        local.set 78
                        i32.const 4
                        local.set 79
                        local.get 78
                        local.get 79
                        i32.add
                        local.set 80
                        local.get 77
                        local.get 80
                        i32.store
                        local.get 78
                        i32.load
                        local.set 81
                        i32.const 24
                        local.set 82
                        local.get 81
                        local.get 82
                        i32.shl
                        local.set 83
                        local.get 83
                        local.get 82
                        i32.shr_s
                        local.set 84
                        local.get 84
                        i64.extend_i32_s
                        local.set 85
                        local.get 5
                        i32.load offset=12
                        local.set 86
                        local.get 86
                        local.get 85
                        i64.store
                        br 9 (;@1;)
                      end
                      local.get 5
                      i32.load offset=4
                      local.set 87
                      local.get 87
                      i32.load
                      local.set 88
                      i32.const 4
                      local.set 89
                      local.get 88
                      local.get 89
                      i32.add
                      local.set 90
                      local.get 87
                      local.get 90
                      i32.store
                      local.get 88
                      i32.load
                      local.set 91
                      i32.const 255
                      local.set 92
                      local.get 91
                      local.get 92
                      i32.and
                      local.set 93
                      local.get 93
                      i64.extend_i32_u
                      local.set 94
                      local.get 5
                      i32.load offset=12
                      local.set 95
                      local.get 95
                      local.get 94
                      i64.store
                      br 8 (;@1;)
                    end
                    local.get 5
                    i32.load offset=4
                    local.set 96
                    local.get 96
                    i32.load
                    local.set 97
                    i32.const 7
                    local.set 98
                    local.get 97
                    local.get 98
                    i32.add
                    local.set 99
                    i32.const -8
                    local.set 100
                    local.get 99
                    local.get 100
                    i32.and
                    local.set 101
                    i32.const 8
                    local.set 102
                    local.get 101
                    local.get 102
                    i32.add
                    local.set 103
                    local.get 96
                    local.get 103
                    i32.store
                    local.get 101
                    i64.load
                    local.set 104
                    local.get 5
                    i32.load offset=12
                    local.set 105
                    local.get 105
                    local.get 104
                    i64.store
                    br 7 (;@1;)
                  end
                  local.get 5
                  i32.load offset=4
                  local.set 106
                  local.get 106
                  i32.load
                  local.set 107
                  i32.const 4
                  local.set 108
                  local.get 107
                  local.get 108
                  i32.add
                  local.set 109
                  local.get 106
                  local.get 109
                  i32.store
                  local.get 107
                  i32.load
                  local.set 110
                  local.get 110
                  local.set 111
                  local.get 111
                  i64.extend_i32_u
                  local.set 112
                  local.get 5
                  i32.load offset=12
                  local.set 113
                  local.get 113
                  local.get 112
                  i64.store
                  br 6 (;@1;)
                end
                local.get 5
                i32.load offset=4
                local.set 114
                local.get 114
                i32.load
                local.set 115
                i32.const 7
                local.set 116
                local.get 115
                local.get 116
                i32.add
                local.set 117
                i32.const -8
                local.set 118
                local.get 117
                local.get 118
                i32.and
                local.set 119
                i32.const 8
                local.set 120
                local.get 119
                local.get 120
                i32.add
                local.set 121
                local.get 114
                local.get 121
                i32.store
                local.get 119
                i64.load
                local.set 122
                local.get 5
                i32.load offset=12
                local.set 123
                local.get 123
                local.get 122
                i64.store
                br 5 (;@1;)
              end
              local.get 5
              i32.load offset=4
              local.set 124
              local.get 124
              i32.load
              local.set 125
              i32.const 7
              local.set 126
              local.get 125
              local.get 126
              i32.add
              local.set 127
              i32.const -8
              local.set 128
              local.get 127
              local.get 128
              i32.and
              local.set 129
              i32.const 8
              local.set 130
              local.get 129
              local.get 130
              i32.add
              local.set 131
              local.get 124
              local.get 131
              i32.store
              local.get 129
              i64.load
              local.set 132
              local.get 5
              i32.load offset=12
              local.set 133
              local.get 133
              local.get 132
              i64.store
              br 4 (;@1;)
            end
            local.get 5
            i32.load offset=4
            local.set 134
            local.get 134
            i32.load
            local.set 135
            i32.const 4
            local.set 136
            local.get 135
            local.get 136
            i32.add
            local.set 137
            local.get 134
            local.get 137
            i32.store
            local.get 135
            i32.load
            local.set 138
            local.get 138
            local.set 139
            local.get 139
            i64.extend_i32_s
            local.set 140
            local.get 5
            i32.load offset=12
            local.set 141
            local.get 141
            local.get 140
            i64.store
            br 3 (;@1;)
          end
          local.get 5
          i32.load offset=4
          local.set 142
          local.get 142
          i32.load
          local.set 143
          i32.const 4
          local.set 144
          local.get 143
          local.get 144
          i32.add
          local.set 145
          local.get 142
          local.get 145
          i32.store
          local.get 143
          i32.load
          local.set 146
          local.get 146
          local.set 147
          local.get 147
          i64.extend_i32_u
          local.set 148
          local.get 5
          i32.load offset=12
          local.set 149
          local.get 149
          local.get 148
          i64.store
          br 2 (;@1;)
        end
        local.get 5
        i32.load offset=4
        local.set 150
        local.get 150
        i32.load
        local.set 151
        i32.const 7
        local.set 152
        local.get 151
        local.get 152
        i32.add
        local.set 153
        i32.const -8
        local.set 154
        local.get 153
        local.get 154
        i32.and
        local.set 155
        i32.const 8
        local.set 156
        local.get 155
        local.get 156
        i32.add
        local.set 157
        local.get 150
        local.get 157
        i32.store
        local.get 155
        f64.load
        local.set 158
        local.get 5
        i32.load offset=12
        local.set 159
        local.get 159
        local.get 158
        f64.store
        br 1 (;@1;)
      end
      call $long_double_not_supported
      unreachable
    end
    i32.const 16
    local.set 160
    local.get 5
    local.get 160
    i32.add
    local.set 161
    local.get 161
    global.set $__stack_pointer
    return)
  (func $fmt_x (type 12) (param i64 i32 i32) (result i32)
    (local i32 i32 i32 i64 i64 i64 i64 i32 i32 i32 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    local.get 0
    i64.store offset=8
    local.get 5
    local.get 1
    i32.store offset=4
    local.get 5
    local.get 2
    i32.store
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        i64.load offset=8
        local.set 6
        i64.const 0
        local.set 7
        local.get 6
        local.set 8
        local.get 7
        local.set 9
        local.get 8
        local.get 9
        i64.ne
        local.set 10
        i32.const 1
        local.set 11
        local.get 10
        local.get 11
        i32.and
        local.set 12
        local.get 12
        i32.eqz
        br_if 1 (;@1;)
        local.get 5
        i64.load offset=8
        local.set 13
        i64.const 15
        local.set 14
        local.get 13
        local.get 14
        i64.and
        local.set 15
        local.get 15
        i32.wrap_i64
        local.set 16
        local.get 16
        i32.load8_u offset=3600
        local.set 17
        i32.const 24
        local.set 18
        local.get 17
        local.get 18
        i32.shl
        local.set 19
        local.get 19
        local.get 18
        i32.shr_s
        local.set 20
        local.get 5
        i32.load
        local.set 21
        local.get 20
        local.get 21
        i32.or
        local.set 22
        local.get 5
        i32.load offset=4
        local.set 23
        i32.const -1
        local.set 24
        local.get 23
        local.get 24
        i32.add
        local.set 25
        local.get 5
        local.get 25
        i32.store offset=4
        local.get 25
        local.get 22
        i32.store8
        local.get 5
        i64.load offset=8
        local.set 26
        i64.const 4
        local.set 27
        local.get 26
        local.get 27
        i64.shr_u
        local.set 28
        local.get 5
        local.get 28
        i64.store offset=8
        br 0 (;@2;)
      end
    end
    local.get 5
    i32.load offset=4
    local.set 29
    local.get 29
    return)
  (func $fmt_o (type 13) (param i64 i32) (result i32)
    (local i32 i32 i32 i64 i64 i64 i64 i32 i32 i32 i64 i64 i64 i64 i64 i32 i32 i32 i32 i64 i64 i64 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    i64.store offset=8
    local.get 4
    local.get 1
    i32.store offset=4
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i64.load offset=8
        local.set 5
        i64.const 0
        local.set 6
        local.get 5
        local.set 7
        local.get 6
        local.set 8
        local.get 7
        local.get 8
        i64.ne
        local.set 9
        i32.const 1
        local.set 10
        local.get 9
        local.get 10
        i32.and
        local.set 11
        local.get 11
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i64.load offset=8
        local.set 12
        i64.const 7
        local.set 13
        local.get 12
        local.get 13
        i64.and
        local.set 14
        i64.const 48
        local.set 15
        local.get 14
        local.get 15
        i64.add
        local.set 16
        local.get 16
        i32.wrap_i64
        local.set 17
        local.get 4
        i32.load offset=4
        local.set 18
        i32.const -1
        local.set 19
        local.get 18
        local.get 19
        i32.add
        local.set 20
        local.get 4
        local.get 20
        i32.store offset=4
        local.get 20
        local.get 17
        i32.store8
        local.get 4
        i64.load offset=8
        local.set 21
        i64.const 3
        local.set 22
        local.get 21
        local.get 22
        i64.shr_u
        local.set 23
        local.get 4
        local.get 23
        i64.store offset=8
        br 0 (;@2;)
      end
    end
    local.get 4
    i32.load offset=4
    local.set 24
    local.get 24
    return)
  (func $fmt_u (type 13) (param i64 i32) (result i32)
    (local i32 i32 i32 i64 i64 i64 i64 i32 i32 i32 i64 i64 i64 i64 i64 i32 i32 i32 i32 i64 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    i64.store offset=8
    local.get 4
    local.get 1
    i32.store offset=4
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i64.load offset=8
        local.set 5
        i64.const 4294967295
        local.set 6
        local.get 5
        local.set 7
        local.get 6
        local.set 8
        local.get 7
        local.get 8
        i64.gt_u
        local.set 9
        i32.const 1
        local.set 10
        local.get 9
        local.get 10
        i32.and
        local.set 11
        local.get 11
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i64.load offset=8
        local.set 12
        i64.const 10
        local.set 13
        local.get 12
        local.get 13
        i64.rem_u
        local.set 14
        i64.const 48
        local.set 15
        local.get 14
        local.get 15
        i64.add
        local.set 16
        local.get 16
        i32.wrap_i64
        local.set 17
        local.get 4
        i32.load offset=4
        local.set 18
        i32.const -1
        local.set 19
        local.get 18
        local.get 19
        i32.add
        local.set 20
        local.get 4
        local.get 20
        i32.store offset=4
        local.get 20
        local.get 17
        i32.store8
        local.get 4
        i64.load offset=8
        local.set 21
        i64.const 10
        local.set 22
        local.get 21
        local.get 22
        i64.div_u
        local.set 23
        local.get 4
        local.get 23
        i64.store offset=8
        br 0 (;@2;)
      end
    end
    local.get 4
    i64.load offset=8
    local.set 24
    local.get 24
    i32.wrap_i64
    local.set 25
    local.get 4
    local.get 25
    i32.store
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load
        local.set 26
        local.get 26
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.load
        local.set 27
        i32.const 10
        local.set 28
        local.get 27
        local.get 28
        i32.rem_u
        local.set 29
        i32.const 48
        local.set 30
        local.get 29
        local.get 30
        i32.add
        local.set 31
        local.get 4
        i32.load offset=4
        local.set 32
        i32.const -1
        local.set 33
        local.get 32
        local.get 33
        i32.add
        local.set 34
        local.get 4
        local.get 34
        i32.store offset=4
        local.get 34
        local.get 31
        i32.store8
        local.get 4
        i32.load
        local.set 35
        i32.const 10
        local.set 36
        local.get 35
        local.get 36
        i32.div_u
        local.set 37
        local.get 4
        local.get 37
        i32.store
        br 0 (;@2;)
      end
    end
    local.get 4
    i32.load offset=4
    local.set 38
    local.get 38
    return)
  (func $pad (type 14) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 5
    i32.const 288
    local.set 6
    local.get 5
    local.get 6
    i32.sub
    local.set 7
    local.get 7
    global.set $__stack_pointer
    local.get 7
    local.get 0
    i32.store offset=284
    local.get 7
    local.get 1
    i32.store8 offset=283
    local.get 7
    local.get 2
    i32.store offset=276
    local.get 7
    local.get 3
    i32.store offset=272
    local.get 7
    local.get 4
    i32.store offset=268
    local.get 7
    i32.load offset=268
    local.set 8
    i32.const 73728
    local.set 9
    local.get 8
    local.get 9
    i32.and
    local.set 10
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 10
          br_if 0 (;@3;)
          local.get 7
          i32.load offset=272
          local.set 11
          local.get 7
          i32.load offset=276
          local.set 12
          local.get 11
          local.set 13
          local.get 12
          local.set 14
          local.get 13
          local.get 14
          i32.ge_s
          local.set 15
          i32.const 1
          local.set 16
          local.get 15
          local.get 16
          i32.and
          local.set 17
          local.get 17
          i32.eqz
          br_if 1 (;@2;)
        end
        br 1 (;@1;)
      end
      local.get 7
      i32.load offset=276
      local.set 18
      local.get 7
      i32.load offset=272
      local.set 19
      local.get 18
      local.get 19
      i32.sub
      local.set 20
      local.get 7
      local.get 20
      i32.store offset=272
      local.get 7
      local.set 21
      local.get 7
      i32.load8_u offset=283
      local.set 22
      i32.const 24
      local.set 23
      local.get 22
      local.get 23
      i32.shl
      local.set 24
      local.get 24
      local.get 23
      i32.shr_s
      local.set 25
      local.get 7
      i32.load offset=272
      local.set 26
      i32.const 256
      local.set 27
      local.get 26
      local.set 28
      local.get 27
      local.set 29
      local.get 28
      local.get 29
      i32.gt_u
      local.set 30
      i32.const 1
      local.set 31
      local.get 30
      local.get 31
      i32.and
      local.set 32
      block  ;; label = @2
        block  ;; label = @3
          local.get 32
          i32.eqz
          br_if 0 (;@3;)
          i32.const 256
          local.set 33
          local.get 33
          local.set 34
          br 1 (;@2;)
        end
        local.get 7
        i32.load offset=272
        local.set 35
        local.get 35
        local.set 34
      end
      local.get 34
      local.set 36
      local.get 21
      local.get 25
      local.get 36
      memory.fill
      block  ;; label = @2
        loop  ;; label = @3
          local.get 7
          i32.load offset=272
          local.set 37
          i32.const 256
          local.set 38
          local.get 37
          local.set 39
          local.get 38
          local.set 40
          local.get 39
          local.get 40
          i32.ge_u
          local.set 41
          i32.const 1
          local.set 42
          local.get 41
          local.get 42
          i32.and
          local.set 43
          local.get 43
          i32.eqz
          br_if 1 (;@2;)
          local.get 7
          i32.load offset=284
          local.set 44
          local.get 7
          local.set 45
          i32.const 256
          local.set 46
          local.get 44
          local.get 45
          local.get 46
          call $out
          local.get 7
          i32.load offset=272
          local.set 47
          i32.const 256
          local.set 48
          local.get 47
          local.get 48
          i32.sub
          local.set 49
          local.get 7
          local.get 49
          i32.store offset=272
          br 0 (;@3;)
        end
      end
      local.get 7
      i32.load offset=284
      local.set 50
      local.get 7
      local.set 51
      local.get 7
      i32.load offset=272
      local.set 52
      local.get 50
      local.get 51
      local.get 52
      call $out
    end
    i32.const 288
    local.set 53
    local.get 7
    local.get 53
    i32.add
    local.set 54
    local.get 54
    global.set $__stack_pointer
    return)
  (func $fmt_fp (type 15) (param i32 f64 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i64 i64 i64 i64 i32 i32 i32 f64 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 f64 f64 f64 f64 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 i32 i32 i32 f64 f64 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 f64 f64 f64 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 f64 i32 i32 i32 f64 f64 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 f64 f64 f64 f64 f64 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i64 i32 i32 i64 i64 i64 i64 i64 i32 i32 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 f64 f64 f64 i32 i32 i32 i32 f64 f64 f64 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 6
    i32.const 736
    local.set 7
    local.get 6
    local.get 7
    i32.sub
    local.set 8
    local.get 8
    global.set $__stack_pointer
    local.get 8
    local.get 0
    i32.store offset=728
    local.get 8
    local.get 1
    f64.store offset=720
    local.get 8
    local.get 2
    i32.store offset=716
    local.get 8
    local.get 3
    i32.store offset=712
    local.get 8
    local.get 4
    i32.store offset=708
    local.get 8
    local.get 5
    i32.store offset=704
    i32.const 0
    local.set 9
    local.get 8
    local.get 9
    i32.store offset=172
    i32.const 2852
    local.set 10
    local.get 8
    local.get 10
    i32.store offset=120
    i32.const 104
    local.set 11
    local.get 8
    local.get 11
    i32.add
    local.set 12
    local.get 12
    local.set 13
    i32.const 12
    local.set 14
    local.get 13
    local.get 14
    i32.add
    local.set 15
    local.get 8
    local.get 15
    i32.store offset=100
    i32.const 1
    local.set 16
    local.get 8
    local.get 16
    i32.store offset=116
    local.get 8
    f64.load offset=720
    local.set 17
    local.get 17
    i64.reinterpret_f64
    local.set 18
    i64.const 0
    local.set 19
    local.get 18
    local.set 20
    local.get 19
    local.set 21
    local.get 20
    local.get 21
    i64.lt_s
    local.set 22
    i32.const 1
    local.set 23
    local.get 22
    local.get 23
    i32.and
    local.set 24
    block  ;; label = @1
      block  ;; label = @2
        local.get 24
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        f64.load offset=720
        local.set 25
        local.get 25
        f64.neg
        local.set 26
        local.get 8
        local.get 26
        f64.store offset=720
        br 1 (;@1;)
      end
      local.get 8
      i32.load offset=708
      local.set 27
      i32.const 2048
      local.set 28
      local.get 27
      local.get 28
      i32.and
      local.set 29
      block  ;; label = @2
        block  ;; label = @3
          local.get 29
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.load offset=120
          local.set 30
          i32.const 3
          local.set 31
          local.get 30
          local.get 31
          i32.add
          local.set 32
          local.get 8
          local.get 32
          i32.store offset=120
          br 1 (;@2;)
        end
        local.get 8
        i32.load offset=708
        local.set 33
        i32.const 1
        local.set 34
        local.get 33
        local.get 34
        i32.and
        local.set 35
        block  ;; label = @3
          block  ;; label = @4
            local.get 35
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=120
            local.set 36
            i32.const 6
            local.set 37
            local.get 36
            local.get 37
            i32.add
            local.set 38
            local.get 8
            local.get 38
            i32.store offset=120
            br 1 (;@3;)
          end
          local.get 8
          i32.load offset=120
          local.set 39
          i32.const 1
          local.set 40
          local.get 39
          local.get 40
          i32.add
          local.set 41
          local.get 8
          local.get 41
          i32.store offset=120
          i32.const 0
          local.set 42
          local.get 8
          local.get 42
          i32.store offset=116
        end
      end
    end
    f64.const inf (;=inf;)
    drop
    local.get 8
    f64.load offset=720
    local.set 43
    local.get 43
    f64.abs
    local.set 44
    f64.const inf (;=inf;)
    local.set 45
    local.get 44
    local.get 45
    f64.lt
    local.set 46
    i32.const 1
    local.set 47
    local.get 46
    local.get 47
    i32.and
    local.set 48
    block  ;; label = @1
      block  ;; label = @2
        local.get 48
        br_if 0 (;@2;)
        local.get 8
        i32.load offset=704
        local.set 49
        i32.const 32
        local.set 50
        local.get 49
        local.get 50
        i32.and
        local.set 51
        i32.const 2897
        local.set 52
        i32.const 2944
        local.set 53
        local.get 52
        local.get 53
        local.get 51
        select
        local.set 54
        local.get 8
        local.get 54
        i32.store offset=92
        local.get 8
        f64.load offset=720
        local.set 55
        local.get 8
        f64.load offset=720
        local.set 56
        local.get 55
        local.get 56
        f64.ne
        local.set 57
        i32.const 1
        local.set 58
        local.get 57
        local.get 58
        i32.and
        local.set 59
        block  ;; label = @3
          local.get 59
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.load offset=704
          local.set 60
          i32.const 32
          local.set 61
          local.get 60
          local.get 61
          i32.and
          local.set 62
          i32.const 2893
          local.set 63
          i32.const 2940
          local.set 64
          local.get 63
          local.get 64
          local.get 62
          select
          local.set 65
          local.get 8
          local.get 65
          i32.store offset=92
        end
        local.get 8
        i32.load offset=728
        local.set 66
        local.get 8
        i32.load offset=716
        local.set 67
        local.get 8
        i32.load offset=116
        local.set 68
        i32.const 3
        local.set 69
        local.get 68
        local.get 69
        i32.add
        local.set 70
        local.get 8
        i32.load offset=708
        local.set 71
        i32.const -65537
        local.set 72
        local.get 71
        local.get 72
        i32.and
        local.set 73
        i32.const 32
        local.set 74
        i32.const 24
        local.set 75
        local.get 74
        local.get 75
        i32.shl
        local.set 76
        local.get 76
        local.get 75
        i32.shr_s
        local.set 77
        local.get 66
        local.get 77
        local.get 67
        local.get 70
        local.get 73
        call $pad
        local.get 8
        i32.load offset=728
        local.set 78
        local.get 8
        i32.load offset=120
        local.set 79
        local.get 8
        i32.load offset=116
        local.set 80
        local.get 78
        local.get 79
        local.get 80
        call $out
        local.get 8
        i32.load offset=728
        local.set 81
        local.get 8
        i32.load offset=92
        local.set 82
        i32.const 3
        local.set 83
        local.get 81
        local.get 82
        local.get 83
        call $out
        local.get 8
        i32.load offset=728
        local.set 84
        local.get 8
        i32.load offset=716
        local.set 85
        local.get 8
        i32.load offset=116
        local.set 86
        i32.const 3
        local.set 87
        local.get 86
        local.get 87
        i32.add
        local.set 88
        local.get 8
        i32.load offset=708
        local.set 89
        i32.const 8192
        local.set 90
        local.get 89
        local.get 90
        i32.xor
        local.set 91
        i32.const 32
        local.set 92
        i32.const 24
        local.set 93
        local.get 92
        local.get 93
        i32.shl
        local.set 94
        local.get 94
        local.get 93
        i32.shr_s
        local.set 95
        local.get 84
        local.get 95
        local.get 85
        local.get 88
        local.get 91
        call $pad
        local.get 8
        i32.load offset=716
        local.set 96
        local.get 8
        i32.load offset=116
        local.set 97
        i32.const 3
        local.set 98
        local.get 97
        local.get 98
        i32.add
        local.set 99
        local.get 96
        local.set 100
        local.get 99
        local.set 101
        local.get 100
        local.get 101
        i32.gt_s
        local.set 102
        i32.const 1
        local.set 103
        local.get 102
        local.get 103
        i32.and
        local.set 104
        block  ;; label = @3
          block  ;; label = @4
            local.get 104
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=716
            local.set 105
            local.get 105
            local.set 106
            br 1 (;@3;)
          end
          local.get 8
          i32.load offset=116
          local.set 107
          i32.const 3
          local.set 108
          local.get 107
          local.get 108
          i32.add
          local.set 109
          local.get 109
          local.set 106
        end
        local.get 106
        local.set 110
        local.get 8
        local.get 110
        i32.store offset=732
        br 1 (;@1;)
      end
      local.get 8
      f64.load offset=720
      local.set 111
      i32.const 172
      local.set 112
      local.get 8
      local.get 112
      i32.add
      local.set 113
      local.get 113
      local.set 114
      local.get 111
      local.get 114
      call $frexp
      local.set 115
      f64.const 0x1p+1 (;=2;)
      local.set 116
      local.get 115
      local.get 116
      f64.mul
      local.set 117
      local.get 8
      local.get 117
      f64.store offset=720
      local.get 8
      f64.load offset=720
      local.set 118
      i32.const 0
      local.set 119
      local.get 119
      f64.convert_i32_s
      local.set 120
      local.get 118
      local.get 120
      f64.ne
      local.set 121
      i32.const 1
      local.set 122
      local.get 121
      local.get 122
      i32.and
      local.set 123
      block  ;; label = @2
        local.get 123
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        i32.load offset=172
        local.set 124
        i32.const -1
        local.set 125
        local.get 124
        local.get 125
        i32.add
        local.set 126
        local.get 8
        local.get 126
        i32.store offset=172
      end
      local.get 8
      i32.load offset=704
      local.set 127
      i32.const 32
      local.set 128
      local.get 127
      local.get 128
      i32.or
      local.set 129
      i32.const 97
      local.set 130
      local.get 129
      local.set 131
      local.get 130
      local.set 132
      local.get 131
      local.get 132
      i32.eq
      local.set 133
      i32.const 1
      local.set 134
      local.get 133
      local.get 134
      i32.and
      local.set 135
      block  ;; label = @2
        local.get 135
        i32.eqz
        br_if 0 (;@2;)
        f64.const 0x1p+3 (;=8;)
        local.set 136
        local.get 8
        local.get 136
        f64.store offset=80
        local.get 8
        i32.load offset=704
        local.set 137
        i32.const 32
        local.set 138
        local.get 137
        local.get 138
        i32.and
        local.set 139
        block  ;; label = @3
          local.get 139
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.load offset=120
          local.set 140
          i32.const 9
          local.set 141
          local.get 140
          local.get 141
          i32.add
          local.set 142
          local.get 8
          local.get 142
          i32.store offset=120
        end
        local.get 8
        i32.load offset=116
        local.set 143
        i32.const 2
        local.set 144
        local.get 143
        local.get 144
        i32.add
        local.set 145
        local.get 8
        local.get 145
        i32.store offset=116
        local.get 8
        i32.load offset=712
        local.set 146
        i32.const 0
        local.set 147
        local.get 146
        local.set 148
        local.get 147
        local.set 149
        local.get 148
        local.get 149
        i32.lt_s
        local.set 150
        i32.const 1
        local.set 151
        local.get 150
        local.get 151
        i32.and
        local.set 152
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 152
              br_if 0 (;@5;)
              local.get 8
              i32.load offset=712
              local.set 153
              i32.const 12
              local.set 154
              local.get 153
              local.set 155
              local.get 154
              local.set 156
              local.get 155
              local.get 156
              i32.ge_s
              local.set 157
              i32.const 1
              local.set 158
              local.get 157
              local.get 158
              i32.and
              local.set 159
              local.get 159
              i32.eqz
              br_if 1 (;@4;)
            end
            i32.const 0
            local.set 160
            local.get 8
            local.get 160
            i32.store offset=76
            br 1 (;@3;)
          end
          local.get 8
          i32.load offset=712
          local.set 161
          i32.const 12
          local.set 162
          local.get 162
          local.get 161
          i32.sub
          local.set 163
          local.get 8
          local.get 163
          i32.store offset=76
        end
        local.get 8
        i32.load offset=76
        local.set 164
        block  ;; label = @3
          local.get 164
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          f64.load offset=80
          local.set 165
          f64.const 0x1p+1 (;=2;)
          local.set 166
          local.get 165
          local.get 166
          f64.mul
          local.set 167
          local.get 8
          local.get 167
          f64.store offset=80
          block  ;; label = @4
            loop  ;; label = @5
              local.get 8
              i32.load offset=76
              local.set 168
              i32.const -1
              local.set 169
              local.get 168
              local.get 169
              i32.add
              local.set 170
              local.get 8
              local.get 170
              i32.store offset=76
              local.get 168
              i32.eqz
              br_if 1 (;@4;)
              local.get 8
              f64.load offset=80
              local.set 171
              f64.const 0x1p+4 (;=16;)
              local.set 172
              local.get 171
              local.get 172
              f64.mul
              local.set 173
              local.get 8
              local.get 173
              f64.store offset=80
              br 0 (;@5;)
            end
          end
          local.get 8
          i32.load offset=120
          local.set 174
          local.get 174
          i32.load8_u
          local.set 175
          i32.const 24
          local.set 176
          local.get 175
          local.get 176
          i32.shl
          local.set 177
          local.get 177
          local.get 176
          i32.shr_s
          local.set 178
          i32.const 45
          local.set 179
          local.get 178
          local.set 180
          local.get 179
          local.set 181
          local.get 180
          local.get 181
          i32.eq
          local.set 182
          i32.const 1
          local.set 183
          local.get 182
          local.get 183
          i32.and
          local.set 184
          block  ;; label = @4
            block  ;; label = @5
              local.get 184
              i32.eqz
              br_if 0 (;@5;)
              local.get 8
              f64.load offset=720
              local.set 185
              local.get 185
              f64.neg
              local.set 186
              local.get 8
              local.get 186
              f64.store offset=720
              local.get 8
              f64.load offset=80
              local.set 187
              local.get 8
              f64.load offset=720
              local.set 188
              local.get 188
              local.get 187
              f64.sub
              local.set 189
              local.get 8
              local.get 189
              f64.store offset=720
              local.get 8
              f64.load offset=80
              local.set 190
              local.get 8
              f64.load offset=720
              local.set 191
              local.get 191
              local.get 190
              f64.add
              local.set 192
              local.get 8
              local.get 192
              f64.store offset=720
              local.get 8
              f64.load offset=720
              local.set 193
              local.get 193
              f64.neg
              local.set 194
              local.get 8
              local.get 194
              f64.store offset=720
              br 1 (;@4;)
            end
            local.get 8
            f64.load offset=80
            local.set 195
            local.get 8
            f64.load offset=720
            local.set 196
            local.get 196
            local.get 195
            f64.add
            local.set 197
            local.get 8
            local.get 197
            f64.store offset=720
            local.get 8
            f64.load offset=80
            local.set 198
            local.get 8
            f64.load offset=720
            local.set 199
            local.get 199
            local.get 198
            f64.sub
            local.set 200
            local.get 8
            local.get 200
            f64.store offset=720
          end
        end
        local.get 8
        i32.load offset=172
        local.set 201
        i32.const 0
        local.set 202
        local.get 201
        local.set 203
        local.get 202
        local.set 204
        local.get 203
        local.get 204
        i32.lt_s
        local.set 205
        i32.const 1
        local.set 206
        local.get 205
        local.get 206
        i32.and
        local.set 207
        block  ;; label = @3
          block  ;; label = @4
            local.get 207
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=172
            local.set 208
            i32.const 0
            local.set 209
            local.get 209
            local.get 208
            i32.sub
            local.set 210
            local.get 210
            local.set 211
            br 1 (;@3;)
          end
          local.get 8
          i32.load offset=172
          local.set 212
          local.get 212
          local.set 211
        end
        local.get 211
        local.set 213
        local.get 213
        local.set 214
        local.get 214
        i64.extend_i32_s
        local.set 215
        local.get 8
        i32.load offset=100
        local.set 216
        local.get 215
        local.get 216
        call $fmt_u
        local.set 217
        local.get 8
        local.get 217
        i32.store offset=96
        local.get 8
        i32.load offset=96
        local.set 218
        local.get 8
        i32.load offset=100
        local.set 219
        local.get 218
        local.set 220
        local.get 219
        local.set 221
        local.get 220
        local.get 221
        i32.eq
        local.set 222
        i32.const 1
        local.set 223
        local.get 222
        local.get 223
        i32.and
        local.set 224
        block  ;; label = @3
          local.get 224
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.load offset=96
          local.set 225
          i32.const -1
          local.set 226
          local.get 225
          local.get 226
          i32.add
          local.set 227
          local.get 8
          local.get 227
          i32.store offset=96
          i32.const 48
          local.set 228
          local.get 227
          local.get 228
          i32.store8
        end
        local.get 8
        i32.load offset=172
        local.set 229
        i32.const 0
        local.set 230
        local.get 229
        local.set 231
        local.get 230
        local.set 232
        local.get 231
        local.get 232
        i32.lt_s
        local.set 233
        i32.const 45
        local.set 234
        i32.const 43
        local.set 235
        i32.const 1
        local.set 236
        local.get 233
        local.get 236
        i32.and
        local.set 237
        local.get 234
        local.get 235
        local.get 237
        select
        local.set 238
        local.get 8
        i32.load offset=96
        local.set 239
        i32.const -1
        local.set 240
        local.get 239
        local.get 240
        i32.add
        local.set 241
        local.get 8
        local.get 241
        i32.store offset=96
        local.get 241
        local.get 238
        i32.store8
        local.get 8
        i32.load offset=704
        local.set 242
        i32.const 15
        local.set 243
        local.get 242
        local.get 243
        i32.add
        local.set 244
        local.get 8
        i32.load offset=96
        local.set 245
        i32.const -1
        local.set 246
        local.get 245
        local.get 246
        i32.add
        local.set 247
        local.get 8
        local.get 247
        i32.store offset=96
        local.get 247
        local.get 244
        i32.store8
        i32.const 128
        local.set 248
        local.get 8
        local.get 248
        i32.add
        local.set 249
        local.get 249
        local.set 250
        local.get 8
        local.get 250
        i32.store offset=124
        loop  ;; label = @3
          local.get 8
          f64.load offset=720
          local.set 251
          local.get 251
          f64.abs
          local.set 252
          f64.const 0x1p+31 (;=2.14748e+09;)
          local.set 253
          local.get 252
          local.get 253
          f64.lt
          local.set 254
          local.get 254
          i32.eqz
          local.set 255
          block  ;; label = @4
            block  ;; label = @5
              local.get 255
              br_if 0 (;@5;)
              local.get 251
              i32.trunc_f64_s
              local.set 256
              local.get 256
              local.set 257
              br 1 (;@4;)
            end
            i32.const -2147483648
            local.set 258
            local.get 258
            local.set 257
          end
          local.get 257
          local.set 259
          local.get 8
          local.get 259
          i32.store offset=72
          local.get 8
          i32.load offset=72
          local.set 260
          local.get 260
          i32.load8_u offset=3600
          local.set 261
          i32.const 24
          local.set 262
          local.get 261
          local.get 262
          i32.shl
          local.set 263
          local.get 263
          local.get 262
          i32.shr_s
          local.set 264
          local.get 8
          i32.load offset=704
          local.set 265
          i32.const 32
          local.set 266
          local.get 265
          local.get 266
          i32.and
          local.set 267
          local.get 264
          local.get 267
          i32.or
          local.set 268
          local.get 8
          i32.load offset=124
          local.set 269
          i32.const 1
          local.set 270
          local.get 269
          local.get 270
          i32.add
          local.set 271
          local.get 8
          local.get 271
          i32.store offset=124
          local.get 269
          local.get 268
          i32.store8
          local.get 8
          f64.load offset=720
          local.set 272
          local.get 8
          i32.load offset=72
          local.set 273
          local.get 273
          f64.convert_i32_s
          local.set 274
          local.get 272
          local.get 274
          f64.sub
          local.set 275
          f64.const 0x1p+4 (;=16;)
          local.set 276
          local.get 276
          local.get 275
          f64.mul
          local.set 277
          local.get 8
          local.get 277
          f64.store offset=720
          local.get 8
          i32.load offset=124
          local.set 278
          i32.const 128
          local.set 279
          local.get 8
          local.get 279
          i32.add
          local.set 280
          local.get 280
          local.set 281
          local.get 278
          local.get 281
          i32.sub
          local.set 282
          i32.const 1
          local.set 283
          local.get 282
          local.set 284
          local.get 283
          local.set 285
          local.get 284
          local.get 285
          i32.eq
          local.set 286
          i32.const 1
          local.set 287
          local.get 286
          local.get 287
          i32.and
          local.set 288
          block  ;; label = @4
            local.get 288
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            f64.load offset=720
            local.set 289
            i32.const 0
            local.set 290
            local.get 290
            f64.convert_i32_s
            local.set 291
            local.get 289
            local.get 291
            f64.ne
            local.set 292
            i32.const 1
            local.set 293
            local.get 292
            local.get 293
            i32.and
            local.set 294
            block  ;; label = @5
              local.get 294
              br_if 0 (;@5;)
              local.get 8
              i32.load offset=712
              local.set 295
              i32.const 0
              local.set 296
              local.get 295
              local.set 297
              local.get 296
              local.set 298
              local.get 297
              local.get 298
              i32.gt_s
              local.set 299
              i32.const 1
              local.set 300
              local.get 299
              local.get 300
              i32.and
              local.set 301
              local.get 301
              br_if 0 (;@5;)
              local.get 8
              i32.load offset=708
              local.set 302
              i32.const 8
              local.set 303
              local.get 302
              local.get 303
              i32.and
              local.set 304
              local.get 304
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 8
            i32.load offset=124
            local.set 305
            i32.const 1
            local.set 306
            local.get 305
            local.get 306
            i32.add
            local.set 307
            local.get 8
            local.get 307
            i32.store offset=124
            i32.const 46
            local.set 308
            local.get 305
            local.get 308
            i32.store8
          end
          local.get 8
          f64.load offset=720
          local.set 309
          i32.const 0
          local.set 310
          local.get 310
          f64.convert_i32_s
          local.set 311
          local.get 309
          local.get 311
          f64.ne
          local.set 312
          i32.const 1
          local.set 313
          local.get 312
          local.get 313
          i32.and
          local.set 314
          local.get 314
          br_if 0 (;@3;)
        end
        local.get 8
        i32.load offset=712
        local.set 315
        local.get 8
        i32.load offset=100
        local.set 316
        local.get 8
        i32.load offset=96
        local.set 317
        local.get 316
        local.get 317
        i32.sub
        local.set 318
        i32.const 2147483645
        local.set 319
        local.get 319
        local.get 318
        i32.sub
        local.set 320
        local.get 8
        i32.load offset=116
        local.set 321
        local.get 320
        local.get 321
        i32.sub
        local.set 322
        local.get 315
        local.set 323
        local.get 322
        local.set 324
        local.get 323
        local.get 324
        i32.gt_s
        local.set 325
        i32.const 1
        local.set 326
        local.get 325
        local.get 326
        i32.and
        local.set 327
        block  ;; label = @3
          local.get 327
          i32.eqz
          br_if 0 (;@3;)
          i32.const -1
          local.set 328
          local.get 8
          local.get 328
          i32.store offset=732
          br 2 (;@1;)
        end
        local.get 8
        i32.load offset=712
        local.set 329
        block  ;; label = @3
          block  ;; label = @4
            local.get 329
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=124
            local.set 330
            i32.const 128
            local.set 331
            local.get 8
            local.get 331
            i32.add
            local.set 332
            local.get 332
            local.set 333
            local.get 330
            local.get 333
            i32.sub
            local.set 334
            i32.const 2
            local.set 335
            local.get 334
            local.get 335
            i32.sub
            local.set 336
            local.get 8
            i32.load offset=712
            local.set 337
            local.get 336
            local.set 338
            local.get 337
            local.set 339
            local.get 338
            local.get 339
            i32.lt_s
            local.set 340
            i32.const 1
            local.set 341
            local.get 340
            local.get 341
            i32.and
            local.set 342
            local.get 342
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=712
            local.set 343
            i32.const 2
            local.set 344
            local.get 343
            local.get 344
            i32.add
            local.set 345
            local.get 8
            i32.load offset=100
            local.set 346
            local.get 8
            i32.load offset=96
            local.set 347
            local.get 346
            local.get 347
            i32.sub
            local.set 348
            local.get 345
            local.get 348
            i32.add
            local.set 349
            local.get 8
            local.get 349
            i32.store offset=156
            br 1 (;@3;)
          end
          local.get 8
          i32.load offset=124
          local.set 350
          i32.const 128
          local.set 351
          local.get 8
          local.get 351
          i32.add
          local.set 352
          local.get 352
          local.set 353
          local.get 350
          local.get 353
          i32.sub
          local.set 354
          local.get 8
          i32.load offset=100
          local.set 355
          local.get 8
          i32.load offset=96
          local.set 356
          local.get 355
          local.get 356
          i32.sub
          local.set 357
          local.get 354
          local.get 357
          i32.add
          local.set 358
          local.get 8
          local.get 358
          i32.store offset=156
        end
        local.get 8
        i32.load offset=728
        local.set 359
        local.get 8
        i32.load offset=716
        local.set 360
        local.get 8
        i32.load offset=116
        local.set 361
        local.get 8
        i32.load offset=156
        local.set 362
        local.get 361
        local.get 362
        i32.add
        local.set 363
        local.get 8
        i32.load offset=708
        local.set 364
        i32.const 32
        local.set 365
        i32.const 24
        local.set 366
        local.get 365
        local.get 366
        i32.shl
        local.set 367
        local.get 367
        local.get 366
        i32.shr_s
        local.set 368
        local.get 359
        local.get 368
        local.get 360
        local.get 363
        local.get 364
        call $pad
        local.get 8
        i32.load offset=728
        local.set 369
        local.get 8
        i32.load offset=120
        local.set 370
        local.get 8
        i32.load offset=116
        local.set 371
        local.get 369
        local.get 370
        local.get 371
        call $out
        local.get 8
        i32.load offset=728
        local.set 372
        local.get 8
        i32.load offset=716
        local.set 373
        local.get 8
        i32.load offset=116
        local.set 374
        local.get 8
        i32.load offset=156
        local.set 375
        local.get 374
        local.get 375
        i32.add
        local.set 376
        local.get 8
        i32.load offset=708
        local.set 377
        i32.const 65536
        local.set 378
        local.get 377
        local.get 378
        i32.xor
        local.set 379
        i32.const 48
        local.set 380
        i32.const 24
        local.set 381
        local.get 380
        local.get 381
        i32.shl
        local.set 382
        local.get 382
        local.get 381
        i32.shr_s
        local.set 383
        local.get 372
        local.get 383
        local.get 373
        local.get 376
        local.get 379
        call $pad
        local.get 8
        i32.load offset=728
        local.set 384
        i32.const 128
        local.set 385
        local.get 8
        local.get 385
        i32.add
        local.set 386
        local.get 386
        local.set 387
        local.get 8
        i32.load offset=124
        local.set 388
        i32.const 128
        local.set 389
        local.get 8
        local.get 389
        i32.add
        local.set 390
        local.get 390
        local.set 391
        local.get 388
        local.get 391
        i32.sub
        local.set 392
        local.get 384
        local.get 387
        local.get 392
        call $out
        local.get 8
        i32.load offset=728
        local.set 393
        local.get 8
        i32.load offset=156
        local.set 394
        local.get 8
        i32.load offset=100
        local.set 395
        local.get 8
        i32.load offset=96
        local.set 396
        local.get 395
        local.get 396
        i32.sub
        local.set 397
        local.get 394
        local.get 397
        i32.sub
        local.set 398
        local.get 8
        i32.load offset=124
        local.set 399
        i32.const 128
        local.set 400
        local.get 8
        local.get 400
        i32.add
        local.set 401
        local.get 401
        local.set 402
        local.get 399
        local.get 402
        i32.sub
        local.set 403
        local.get 398
        local.get 403
        i32.sub
        local.set 404
        i32.const 48
        local.set 405
        i32.const 0
        local.set 406
        i32.const 24
        local.set 407
        local.get 405
        local.get 407
        i32.shl
        local.set 408
        local.get 408
        local.get 407
        i32.shr_s
        local.set 409
        local.get 393
        local.get 409
        local.get 404
        local.get 406
        local.get 406
        call $pad
        local.get 8
        i32.load offset=728
        local.set 410
        local.get 8
        i32.load offset=96
        local.set 411
        local.get 8
        i32.load offset=100
        local.set 412
        local.get 8
        i32.load offset=96
        local.set 413
        local.get 412
        local.get 413
        i32.sub
        local.set 414
        local.get 410
        local.get 411
        local.get 414
        call $out
        local.get 8
        i32.load offset=728
        local.set 415
        local.get 8
        i32.load offset=716
        local.set 416
        local.get 8
        i32.load offset=116
        local.set 417
        local.get 8
        i32.load offset=156
        local.set 418
        local.get 417
        local.get 418
        i32.add
        local.set 419
        local.get 8
        i32.load offset=708
        local.set 420
        i32.const 8192
        local.set 421
        local.get 420
        local.get 421
        i32.xor
        local.set 422
        i32.const 32
        local.set 423
        i32.const 24
        local.set 424
        local.get 423
        local.get 424
        i32.shl
        local.set 425
        local.get 425
        local.get 424
        i32.shr_s
        local.set 426
        local.get 415
        local.get 426
        local.get 416
        local.get 419
        local.get 422
        call $pad
        local.get 8
        i32.load offset=716
        local.set 427
        local.get 8
        i32.load offset=116
        local.set 428
        local.get 8
        i32.load offset=156
        local.set 429
        local.get 428
        local.get 429
        i32.add
        local.set 430
        local.get 427
        local.set 431
        local.get 430
        local.set 432
        local.get 431
        local.get 432
        i32.gt_s
        local.set 433
        i32.const 1
        local.set 434
        local.get 433
        local.get 434
        i32.and
        local.set 435
        block  ;; label = @3
          block  ;; label = @4
            local.get 435
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=716
            local.set 436
            local.get 436
            local.set 437
            br 1 (;@3;)
          end
          local.get 8
          i32.load offset=116
          local.set 438
          local.get 8
          i32.load offset=156
          local.set 439
          local.get 438
          local.get 439
          i32.add
          local.set 440
          local.get 440
          local.set 437
        end
        local.get 437
        local.set 441
        local.get 8
        local.get 441
        i32.store offset=732
        br 1 (;@1;)
      end
      local.get 8
      i32.load offset=712
      local.set 442
      i32.const 0
      local.set 443
      local.get 442
      local.set 444
      local.get 443
      local.set 445
      local.get 444
      local.get 445
      i32.lt_s
      local.set 446
      i32.const 1
      local.set 447
      local.get 446
      local.get 447
      i32.and
      local.set 448
      block  ;; label = @2
        local.get 448
        i32.eqz
        br_if 0 (;@2;)
        i32.const 6
        local.set 449
        local.get 8
        local.get 449
        i32.store offset=712
      end
      local.get 8
      f64.load offset=720
      local.set 450
      i32.const 0
      local.set 451
      local.get 451
      f64.convert_i32_s
      local.set 452
      local.get 450
      local.get 452
      f64.ne
      local.set 453
      i32.const 1
      local.set 454
      local.get 453
      local.get 454
      i32.and
      local.set 455
      block  ;; label = @2
        local.get 455
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        f64.load offset=720
        local.set 456
        f64.const 0x1p+28 (;=2.68435e+08;)
        local.set 457
        local.get 456
        local.get 457
        f64.mul
        local.set 458
        local.get 8
        local.get 458
        f64.store offset=720
        local.get 8
        i32.load offset=172
        local.set 459
        i32.const 28
        local.set 460
        local.get 459
        local.get 460
        i32.sub
        local.set 461
        local.get 8
        local.get 461
        i32.store offset=172
      end
      local.get 8
      i32.load offset=172
      local.set 462
      i32.const 0
      local.set 463
      local.get 462
      local.set 464
      local.get 463
      local.set 465
      local.get 464
      local.get 465
      i32.lt_s
      local.set 466
      i32.const 1
      local.set 467
      local.get 466
      local.get 467
      i32.and
      local.set 468
      block  ;; label = @2
        block  ;; label = @3
          local.get 468
          i32.eqz
          br_if 0 (;@3;)
          i32.const 192
          local.set 469
          local.get 8
          local.get 469
          i32.add
          local.set 470
          local.get 470
          local.set 471
          local.get 8
          local.get 471
          i32.store offset=176
          local.get 8
          local.get 471
          i32.store offset=180
          local.get 8
          local.get 471
          i32.store offset=188
          br 1 (;@2;)
        end
        i32.const 192
        local.set 472
        local.get 8
        local.get 472
        i32.add
        local.set 473
        local.get 473
        local.set 474
        i32.const 504
        local.set 475
        local.get 474
        local.get 475
        i32.add
        local.set 476
        i32.const -212
        local.set 477
        local.get 476
        local.get 477
        i32.add
        local.set 478
        i32.const -4
        local.set 479
        local.get 478
        local.get 479
        i32.add
        local.set 480
        local.get 8
        local.get 480
        i32.store offset=176
        local.get 8
        local.get 480
        i32.store offset=180
        local.get 8
        local.get 480
        i32.store offset=188
      end
      loop  ;; label = @2
        local.get 8
        f64.load offset=720
        local.set 481
        f64.const 0x1p+32 (;=4.29497e+09;)
        local.set 482
        local.get 481
        local.get 482
        f64.lt
        local.set 483
        f64.const 0x0p+0 (;=0;)
        local.set 484
        local.get 481
        local.get 484
        f64.ge
        local.set 485
        local.get 483
        local.get 485
        i32.and
        local.set 486
        local.get 486
        i32.eqz
        local.set 487
        block  ;; label = @3
          block  ;; label = @4
            local.get 487
            br_if 0 (;@4;)
            local.get 481
            i32.trunc_f64_u
            local.set 488
            local.get 488
            local.set 489
            br 1 (;@3;)
          end
          i32.const 0
          local.set 490
          local.get 490
          local.set 489
        end
        local.get 489
        local.set 491
        local.get 8
        i32.load offset=176
        local.set 492
        local.get 492
        local.get 491
        i32.store
        local.get 8
        f64.load offset=720
        local.set 493
        local.get 8
        i32.load offset=176
        local.set 494
        i32.const 4
        local.set 495
        local.get 494
        local.get 495
        i32.add
        local.set 496
        local.get 8
        local.get 496
        i32.store offset=176
        local.get 494
        i32.load
        local.set 497
        local.get 497
        f64.convert_i32_u
        local.set 498
        local.get 493
        local.get 498
        f64.sub
        local.set 499
        f64.const 0x1.dcd65p+29 (;=1e+09;)
        local.set 500
        local.get 500
        local.get 499
        f64.mul
        local.set 501
        local.get 8
        local.get 501
        f64.store offset=720
        local.get 8
        f64.load offset=720
        local.set 502
        i32.const 0
        local.set 503
        local.get 503
        f64.convert_i32_s
        local.set 504
        local.get 502
        local.get 504
        f64.ne
        local.set 505
        i32.const 1
        local.set 506
        local.get 505
        local.get 506
        i32.and
        local.set 507
        local.get 507
        br_if 0 (;@2;)
      end
      block  ;; label = @2
        loop  ;; label = @3
          local.get 8
          i32.load offset=172
          local.set 508
          i32.const 0
          local.set 509
          local.get 508
          local.set 510
          local.get 509
          local.set 511
          local.get 510
          local.get 511
          i32.gt_s
          local.set 512
          i32.const 1
          local.set 513
          local.get 512
          local.get 513
          i32.and
          local.set 514
          local.get 514
          i32.eqz
          br_if 1 (;@2;)
          i32.const 0
          local.set 515
          local.get 8
          local.get 515
          i32.store offset=68
          local.get 8
          i32.load offset=172
          local.set 516
          i32.const 29
          local.set 517
          local.get 517
          local.set 518
          local.get 516
          local.set 519
          local.get 518
          local.get 519
          i32.lt_s
          local.set 520
          i32.const 1
          local.set 521
          local.get 520
          local.get 521
          i32.and
          local.set 522
          block  ;; label = @4
            block  ;; label = @5
              local.get 522
              i32.eqz
              br_if 0 (;@5;)
              i32.const 29
              local.set 523
              local.get 523
              local.set 524
              br 1 (;@4;)
            end
            local.get 8
            i32.load offset=172
            local.set 525
            local.get 525
            local.set 524
          end
          local.get 524
          local.set 526
          local.get 8
          local.get 526
          i32.store offset=64
          local.get 8
          i32.load offset=176
          local.set 527
          i32.const -4
          local.set 528
          local.get 527
          local.get 528
          i32.add
          local.set 529
          local.get 8
          local.get 529
          i32.store offset=184
          block  ;; label = @4
            loop  ;; label = @5
              local.get 8
              i32.load offset=184
              local.set 530
              local.get 8
              i32.load offset=188
              local.set 531
              local.get 530
              local.set 532
              local.get 531
              local.set 533
              local.get 532
              local.get 533
              i32.ge_u
              local.set 534
              i32.const 1
              local.set 535
              local.get 534
              local.get 535
              i32.and
              local.set 536
              local.get 536
              i32.eqz
              br_if 1 (;@4;)
              local.get 8
              i32.load offset=184
              local.set 537
              local.get 537
              i32.load
              local.set 538
              local.get 538
              local.set 539
              local.get 539
              i64.extend_i32_u
              local.set 540
              local.get 8
              i32.load offset=64
              local.set 541
              local.get 541
              local.set 542
              local.get 542
              i64.extend_i32_u
              local.set 543
              local.get 540
              local.get 543
              i64.shl
              local.set 544
              local.get 8
              i32.load offset=68
              local.set 545
              local.get 545
              local.set 546
              local.get 546
              i64.extend_i32_u
              local.set 547
              local.get 544
              local.get 547
              i64.add
              local.set 548
              local.get 8
              local.get 548
              i64.store offset=56
              local.get 8
              i64.load offset=56
              local.set 549
              i64.const 1000000000
              local.set 550
              local.get 549
              local.get 550
              i64.rem_u
              local.set 551
              local.get 551
              i32.wrap_i64
              local.set 552
              local.get 8
              i32.load offset=184
              local.set 553
              local.get 553
              local.get 552
              i32.store
              local.get 8
              i64.load offset=56
              local.set 554
              i64.const 1000000000
              local.set 555
              local.get 554
              local.get 555
              i64.div_u
              local.set 556
              local.get 556
              i32.wrap_i64
              local.set 557
              local.get 8
              local.get 557
              i32.store offset=68
              local.get 8
              i32.load offset=184
              local.set 558
              i32.const -4
              local.set 559
              local.get 558
              local.get 559
              i32.add
              local.set 560
              local.get 8
              local.get 560
              i32.store offset=184
              br 0 (;@5;)
            end
          end
          local.get 8
          i32.load offset=68
          local.set 561
          block  ;; label = @4
            local.get 561
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=68
            local.set 562
            local.get 8
            i32.load offset=188
            local.set 563
            i32.const -4
            local.set 564
            local.get 563
            local.get 564
            i32.add
            local.set 565
            local.get 8
            local.get 565
            i32.store offset=188
            local.get 565
            local.get 562
            i32.store
          end
          loop  ;; label = @4
            local.get 8
            i32.load offset=176
            local.set 566
            local.get 8
            i32.load offset=188
            local.set 567
            local.get 566
            local.set 568
            local.get 567
            local.set 569
            local.get 568
            local.get 569
            i32.gt_u
            local.set 570
            i32.const 0
            local.set 571
            i32.const 1
            local.set 572
            local.get 570
            local.get 572
            i32.and
            local.set 573
            local.get 571
            local.set 574
            block  ;; label = @5
              local.get 573
              i32.eqz
              br_if 0 (;@5;)
              local.get 8
              i32.load offset=176
              local.set 575
              i32.const -4
              local.set 576
              local.get 575
              local.get 576
              i32.add
              local.set 577
              local.get 577
              i32.load
              local.set 578
              i32.const 0
              local.set 579
              local.get 578
              local.set 580
              local.get 579
              local.set 581
              local.get 580
              local.get 581
              i32.ne
              local.set 582
              i32.const -1
              local.set 583
              local.get 582
              local.get 583
              i32.xor
              local.set 584
              local.get 584
              local.set 574
            end
            local.get 574
            local.set 585
            i32.const 1
            local.set 586
            local.get 585
            local.get 586
            i32.and
            local.set 587
            block  ;; label = @5
              local.get 587
              i32.eqz
              br_if 0 (;@5;)
              local.get 8
              i32.load offset=176
              local.set 588
              i32.const -4
              local.set 589
              local.get 588
              local.get 589
              i32.add
              local.set 590
              local.get 8
              local.get 590
              i32.store offset=176
              br 1 (;@4;)
            end
          end
          local.get 8
          i32.load offset=64
          local.set 591
          local.get 8
          i32.load offset=172
          local.set 592
          local.get 592
          local.get 591
          i32.sub
          local.set 593
          local.get 8
          local.get 593
          i32.store offset=172
          br 0 (;@3;)
        end
      end
      block  ;; label = @2
        loop  ;; label = @3
          local.get 8
          i32.load offset=172
          local.set 594
          i32.const 0
          local.set 595
          local.get 594
          local.set 596
          local.get 595
          local.set 597
          local.get 596
          local.get 597
          i32.lt_s
          local.set 598
          i32.const 1
          local.set 599
          local.get 598
          local.get 599
          i32.and
          local.set 600
          local.get 600
          i32.eqz
          br_if 1 (;@2;)
          i32.const 0
          local.set 601
          local.get 8
          local.get 601
          i32.store offset=52
          local.get 8
          i32.load offset=172
          local.set 602
          i32.const 0
          local.set 603
          local.get 603
          local.get 602
          i32.sub
          local.set 604
          i32.const 9
          local.set 605
          local.get 605
          local.set 606
          local.get 604
          local.set 607
          local.get 606
          local.get 607
          i32.lt_s
          local.set 608
          i32.const 1
          local.set 609
          local.get 608
          local.get 609
          i32.and
          local.set 610
          block  ;; label = @4
            block  ;; label = @5
              local.get 610
              i32.eqz
              br_if 0 (;@5;)
              i32.const 9
              local.set 611
              local.get 611
              local.set 612
              br 1 (;@4;)
            end
            local.get 8
            i32.load offset=172
            local.set 613
            i32.const 0
            local.set 614
            local.get 614
            local.get 613
            i32.sub
            local.set 615
            local.get 615
            local.set 612
          end
          local.get 612
          local.set 616
          local.get 8
          local.get 616
          i32.store offset=44
          local.get 8
          i32.load offset=712
          local.set 617
          i32.const 17
          local.set 618
          local.get 617
          local.get 618
          i32.add
          local.set 619
          i32.const 8
          local.set 620
          local.get 619
          local.get 620
          i32.add
          local.set 621
          i32.const 9
          local.set 622
          local.get 621
          local.get 622
          i32.div_u
          local.set 623
          i32.const 1
          local.set 624
          local.get 623
          local.get 624
          i32.add
          local.set 625
          local.get 8
          local.get 625
          i32.store offset=40
          local.get 8
          i32.load offset=188
          local.set 626
          local.get 8
          local.get 626
          i32.store offset=184
          block  ;; label = @4
            loop  ;; label = @5
              local.get 8
              i32.load offset=184
              local.set 627
              local.get 8
              i32.load offset=176
              local.set 628
              local.get 627
              local.set 629
              local.get 628
              local.set 630
              local.get 629
              local.get 630
              i32.lt_u
              local.set 631
              i32.const 1
              local.set 632
              local.get 631
              local.get 632
              i32.and
              local.set 633
              local.get 633
              i32.eqz
              br_if 1 (;@4;)
              local.get 8
              i32.load offset=184
              local.set 634
              local.get 634
              i32.load
              local.set 635
              local.get 8
              i32.load offset=44
              local.set 636
              i32.const 1
              local.set 637
              local.get 637
              local.get 636
              i32.shl
              local.set 638
              i32.const 1
              local.set 639
              local.get 638
              local.get 639
              i32.sub
              local.set 640
              local.get 635
              local.get 640
              i32.and
              local.set 641
              local.get 8
              local.get 641
              i32.store offset=36
              local.get 8
              i32.load offset=184
              local.set 642
              local.get 642
              i32.load
              local.set 643
              local.get 8
              i32.load offset=44
              local.set 644
              local.get 643
              local.get 644
              i32.shr_u
              local.set 645
              local.get 8
              i32.load offset=52
              local.set 646
              local.get 645
              local.get 646
              i32.add
              local.set 647
              local.get 8
              i32.load offset=184
              local.set 648
              local.get 648
              local.get 647
              i32.store
              local.get 8
              i32.load offset=44
              local.set 649
              i32.const 1000000000
              local.set 650
              local.get 650
              local.get 649
              i32.shr_s
              local.set 651
              local.get 8
              i32.load offset=36
              local.set 652
              local.get 651
              local.get 652
              i32.mul
              local.set 653
              local.get 8
              local.get 653
              i32.store offset=52
              local.get 8
              i32.load offset=184
              local.set 654
              i32.const 4
              local.set 655
              local.get 654
              local.get 655
              i32.add
              local.set 656
              local.get 8
              local.get 656
              i32.store offset=184
              br 0 (;@5;)
            end
          end
          local.get 8
          i32.load offset=188
          local.set 657
          local.get 657
          i32.load
          local.set 658
          block  ;; label = @4
            local.get 658
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=188
            local.set 659
            i32.const 4
            local.set 660
            local.get 659
            local.get 660
            i32.add
            local.set 661
            local.get 8
            local.get 661
            i32.store offset=188
          end
          local.get 8
          i32.load offset=52
          local.set 662
          block  ;; label = @4
            local.get 662
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=52
            local.set 663
            local.get 8
            i32.load offset=176
            local.set 664
            i32.const 4
            local.set 665
            local.get 664
            local.get 665
            i32.add
            local.set 666
            local.get 8
            local.get 666
            i32.store offset=176
            local.get 664
            local.get 663
            i32.store
          end
          local.get 8
          i32.load offset=704
          local.set 667
          i32.const 32
          local.set 668
          local.get 667
          local.get 668
          i32.or
          local.set 669
          i32.const 102
          local.set 670
          local.get 669
          local.set 671
          local.get 670
          local.set 672
          local.get 671
          local.get 672
          i32.eq
          local.set 673
          i32.const 1
          local.set 674
          local.get 673
          local.get 674
          i32.and
          local.set 675
          block  ;; label = @4
            block  ;; label = @5
              local.get 675
              i32.eqz
              br_if 0 (;@5;)
              local.get 8
              i32.load offset=180
              local.set 676
              local.get 676
              local.set 677
              br 1 (;@4;)
            end
            local.get 8
            i32.load offset=188
            local.set 678
            local.get 678
            local.set 677
          end
          local.get 677
          local.set 679
          local.get 8
          local.get 679
          i32.store offset=48
          local.get 8
          i32.load offset=176
          local.set 680
          local.get 8
          i32.load offset=48
          local.set 681
          local.get 680
          local.get 681
          i32.sub
          local.set 682
          i32.const 2
          local.set 683
          local.get 682
          local.get 683
          i32.shr_s
          local.set 684
          local.get 8
          i32.load offset=40
          local.set 685
          local.get 684
          local.set 686
          local.get 685
          local.set 687
          local.get 686
          local.get 687
          i32.gt_s
          local.set 688
          i32.const 1
          local.set 689
          local.get 688
          local.get 689
          i32.and
          local.set 690
          block  ;; label = @4
            local.get 690
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=48
            local.set 691
            local.get 8
            i32.load offset=40
            local.set 692
            i32.const 2
            local.set 693
            local.get 692
            local.get 693
            i32.shl
            local.set 694
            local.get 691
            local.get 694
            i32.add
            local.set 695
            local.get 8
            local.get 695
            i32.store offset=176
          end
          local.get 8
          i32.load offset=44
          local.set 696
          local.get 8
          i32.load offset=172
          local.set 697
          local.get 697
          local.get 696
          i32.add
          local.set 698
          local.get 8
          local.get 698
          i32.store offset=172
          br 0 (;@3;)
        end
      end
      local.get 8
      i32.load offset=188
      local.set 699
      local.get 8
      i32.load offset=176
      local.set 700
      local.get 699
      local.set 701
      local.get 700
      local.set 702
      local.get 701
      local.get 702
      i32.lt_u
      local.set 703
      i32.const 1
      local.set 704
      local.get 703
      local.get 704
      i32.and
      local.set 705
      block  ;; label = @2
        block  ;; label = @3
          local.get 705
          i32.eqz
          br_if 0 (;@3;)
          i32.const 10
          local.set 706
          local.get 8
          local.get 706
          i32.store offset=164
          local.get 8
          i32.load offset=180
          local.set 707
          local.get 8
          i32.load offset=188
          local.set 708
          local.get 707
          local.get 708
          i32.sub
          local.set 709
          i32.const 2
          local.set 710
          local.get 709
          local.get 710
          i32.shr_s
          local.set 711
          i32.const 9
          local.set 712
          local.get 711
          local.get 712
          i32.mul
          local.set 713
          local.get 8
          local.get 713
          i32.store offset=168
          block  ;; label = @4
            loop  ;; label = @5
              local.get 8
              i32.load offset=188
              local.set 714
              local.get 714
              i32.load
              local.set 715
              local.get 8
              i32.load offset=164
              local.set 716
              local.get 715
              local.set 717
              local.get 716
              local.set 718
              local.get 717
              local.get 718
              i32.ge_u
              local.set 719
              i32.const 1
              local.set 720
              local.get 719
              local.get 720
              i32.and
              local.set 721
              local.get 721
              i32.eqz
              br_if 1 (;@4;)
              local.get 8
              i32.load offset=164
              local.set 722
              i32.const 10
              local.set 723
              local.get 722
              local.get 723
              i32.mul
              local.set 724
              local.get 8
              local.get 724
              i32.store offset=164
              local.get 8
              i32.load offset=168
              local.set 725
              i32.const 1
              local.set 726
              local.get 725
              local.get 726
              i32.add
              local.set 727
              local.get 8
              local.get 727
              i32.store offset=168
              br 0 (;@5;)
            end
          end
          br 1 (;@2;)
        end
        i32.const 0
        local.set 728
        local.get 8
        local.get 728
        i32.store offset=168
      end
      local.get 8
      i32.load offset=712
      local.set 729
      local.get 8
      i32.load offset=704
      local.set 730
      i32.const 32
      local.set 731
      local.get 730
      local.get 731
      i32.or
      local.set 732
      i32.const 102
      local.set 733
      local.get 732
      local.set 734
      local.get 733
      local.set 735
      local.get 734
      local.get 735
      i32.ne
      local.set 736
      i32.const 1
      local.set 737
      local.get 736
      local.get 737
      i32.and
      local.set 738
      local.get 8
      i32.load offset=168
      local.set 739
      local.get 738
      local.get 739
      i32.mul
      local.set 740
      local.get 729
      local.get 740
      i32.sub
      local.set 741
      local.get 8
      i32.load offset=704
      local.set 742
      i32.const 32
      local.set 743
      local.get 742
      local.get 743
      i32.or
      local.set 744
      i32.const 103
      local.set 745
      local.get 744
      local.set 746
      local.get 745
      local.set 747
      local.get 746
      local.get 747
      i32.eq
      local.set 748
      i32.const 0
      local.set 749
      i32.const 1
      local.set 750
      local.get 748
      local.get 750
      i32.and
      local.set 751
      local.get 749
      local.set 752
      block  ;; label = @2
        local.get 751
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        i32.load offset=712
        local.set 753
        i32.const 0
        local.set 754
        local.get 753
        local.set 755
        local.get 754
        local.set 756
        local.get 755
        local.get 756
        i32.ne
        local.set 757
        local.get 757
        local.set 752
      end
      local.get 752
      local.set 758
      i32.const 1
      local.set 759
      local.get 758
      local.get 759
      i32.and
      local.set 760
      local.get 741
      local.get 760
      i32.sub
      local.set 761
      local.get 8
      local.get 761
      i32.store offset=160
      local.get 8
      i32.load offset=160
      local.set 762
      local.get 8
      i32.load offset=176
      local.set 763
      local.get 8
      i32.load offset=180
      local.set 764
      local.get 763
      local.get 764
      i32.sub
      local.set 765
      i32.const 2
      local.set 766
      local.get 765
      local.get 766
      i32.shr_s
      local.set 767
      i32.const 1
      local.set 768
      local.get 767
      local.get 768
      i32.sub
      local.set 769
      i32.const 9
      local.set 770
      local.get 769
      local.get 770
      i32.mul
      local.set 771
      local.get 762
      local.set 772
      local.get 771
      local.set 773
      local.get 772
      local.get 773
      i32.lt_s
      local.set 774
      i32.const 1
      local.set 775
      local.get 774
      local.get 775
      i32.and
      local.set 776
      block  ;; label = @2
        local.get 776
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        i32.load offset=180
        local.set 777
        i32.const 4
        local.set 778
        local.get 777
        local.get 778
        i32.add
        local.set 779
        local.get 8
        i32.load offset=160
        local.set 780
        i32.const 9216
        local.set 781
        local.get 780
        local.get 781
        i32.add
        local.set 782
        i32.const 9
        local.set 783
        local.get 782
        local.get 783
        i32.div_s
        local.set 784
        i32.const 1024
        local.set 785
        local.get 784
        local.get 785
        i32.sub
        local.set 786
        i32.const 2
        local.set 787
        local.get 786
        local.get 787
        i32.shl
        local.set 788
        local.get 779
        local.get 788
        i32.add
        local.set 789
        local.get 8
        local.get 789
        i32.store offset=184
        local.get 8
        i32.load offset=160
        local.set 790
        i32.const 9216
        local.set 791
        local.get 790
        local.get 791
        i32.add
        local.set 792
        local.get 8
        local.get 792
        i32.store offset=160
        local.get 8
        i32.load offset=160
        local.set 793
        i32.const 9
        local.set 794
        local.get 793
        local.get 794
        i32.rem_s
        local.set 795
        local.get 8
        local.get 795
        i32.store offset=160
        i32.const 10
        local.set 796
        local.get 8
        local.get 796
        i32.store offset=164
        local.get 8
        i32.load offset=160
        local.set 797
        i32.const 1
        local.set 798
        local.get 797
        local.get 798
        i32.add
        local.set 799
        local.get 8
        local.get 799
        i32.store offset=160
        block  ;; label = @3
          loop  ;; label = @4
            local.get 8
            i32.load offset=160
            local.set 800
            i32.const 9
            local.set 801
            local.get 800
            local.set 802
            local.get 801
            local.set 803
            local.get 802
            local.get 803
            i32.lt_s
            local.set 804
            i32.const 1
            local.set 805
            local.get 804
            local.get 805
            i32.and
            local.set 806
            local.get 806
            i32.eqz
            br_if 1 (;@3;)
            local.get 8
            i32.load offset=164
            local.set 807
            i32.const 10
            local.set 808
            local.get 807
            local.get 808
            i32.mul
            local.set 809
            local.get 8
            local.get 809
            i32.store offset=164
            local.get 8
            i32.load offset=160
            local.set 810
            i32.const 1
            local.set 811
            local.get 810
            local.get 811
            i32.add
            local.set 812
            local.get 8
            local.get 812
            i32.store offset=160
            br 0 (;@4;)
          end
        end
        local.get 8
        i32.load offset=184
        local.set 813
        local.get 813
        i32.load
        local.set 814
        local.get 8
        i32.load offset=164
        local.set 815
        local.get 814
        local.get 815
        i32.rem_u
        local.set 816
        local.get 8
        local.get 816
        i32.store offset=32
        local.get 8
        i32.load offset=32
        local.set 817
        block  ;; label = @3
          block  ;; label = @4
            local.get 817
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=184
            local.set 818
            i32.const 4
            local.set 819
            local.get 818
            local.get 819
            i32.add
            local.set 820
            local.get 8
            i32.load offset=176
            local.set 821
            local.get 820
            local.set 822
            local.get 821
            local.set 823
            local.get 822
            local.get 823
            i32.ne
            local.set 824
            i32.const 1
            local.set 825
            local.get 824
            local.get 825
            i32.and
            local.set 826
            local.get 826
            i32.eqz
            br_if 1 (;@3;)
          end
          f64.const 0x1p+53 (;=9.0072e+15;)
          local.set 827
          local.get 8
          local.get 827
          f64.store offset=24
          local.get 8
          i32.load offset=184
          local.set 828
          local.get 828
          i32.load
          local.set 829
          local.get 8
          i32.load offset=164
          local.set 830
          local.get 829
          local.get 830
          i32.div_u
          local.set 831
          i32.const 1
          local.set 832
          local.get 831
          local.get 832
          i32.and
          local.set 833
          block  ;; label = @4
            block  ;; label = @5
              local.get 833
              br_if 0 (;@5;)
              local.get 8
              i32.load offset=164
              local.set 834
              i32.const 1000000000
              local.set 835
              local.get 834
              local.set 836
              local.get 835
              local.set 837
              local.get 836
              local.get 837
              i32.eq
              local.set 838
              i32.const 1
              local.set 839
              local.get 838
              local.get 839
              i32.and
              local.set 840
              local.get 840
              i32.eqz
              br_if 1 (;@4;)
              local.get 8
              i32.load offset=184
              local.set 841
              local.get 8
              i32.load offset=188
              local.set 842
              local.get 841
              local.set 843
              local.get 842
              local.set 844
              local.get 843
              local.get 844
              i32.gt_u
              local.set 845
              i32.const 1
              local.set 846
              local.get 845
              local.get 846
              i32.and
              local.set 847
              local.get 847
              i32.eqz
              br_if 1 (;@4;)
              local.get 8
              i32.load offset=184
              local.set 848
              i32.const -4
              local.set 849
              local.get 848
              local.get 849
              i32.add
              local.set 850
              local.get 850
              i32.load
              local.set 851
              i32.const 1
              local.set 852
              local.get 851
              local.get 852
              i32.and
              local.set 853
              local.get 853
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 8
            f64.load offset=24
            local.set 854
            f64.const 0x1p+1 (;=2;)
            local.set 855
            local.get 854
            local.get 855
            f64.add
            local.set 856
            local.get 8
            local.get 856
            f64.store offset=24
          end
          local.get 8
          i32.load offset=32
          local.set 857
          local.get 8
          i32.load offset=164
          local.set 858
          i32.const 2
          local.set 859
          local.get 858
          local.get 859
          i32.div_s
          local.set 860
          local.get 857
          local.set 861
          local.get 860
          local.set 862
          local.get 861
          local.get 862
          i32.lt_u
          local.set 863
          i32.const 1
          local.set 864
          local.get 863
          local.get 864
          i32.and
          local.set 865
          block  ;; label = @4
            block  ;; label = @5
              local.get 865
              i32.eqz
              br_if 0 (;@5;)
              f64.const 0x1p-1 (;=0.5;)
              local.set 866
              local.get 8
              local.get 866
              f64.store offset=16
              br 1 (;@4;)
            end
            local.get 8
            i32.load offset=32
            local.set 867
            local.get 8
            i32.load offset=164
            local.set 868
            i32.const 2
            local.set 869
            local.get 868
            local.get 869
            i32.div_s
            local.set 870
            local.get 867
            local.set 871
            local.get 870
            local.set 872
            local.get 871
            local.get 872
            i32.eq
            local.set 873
            i32.const 1
            local.set 874
            local.get 873
            local.get 874
            i32.and
            local.set 875
            block  ;; label = @5
              block  ;; label = @6
                local.get 875
                i32.eqz
                br_if 0 (;@6;)
                local.get 8
                i32.load offset=184
                local.set 876
                i32.const 4
                local.set 877
                local.get 876
                local.get 877
                i32.add
                local.set 878
                local.get 8
                i32.load offset=176
                local.set 879
                local.get 878
                local.set 880
                local.get 879
                local.set 881
                local.get 880
                local.get 881
                i32.eq
                local.set 882
                i32.const 1
                local.set 883
                local.get 882
                local.get 883
                i32.and
                local.set 884
                local.get 884
                i32.eqz
                br_if 0 (;@6;)
                f64.const 0x1p+0 (;=1;)
                local.set 885
                local.get 8
                local.get 885
                f64.store offset=16
                br 1 (;@5;)
              end
              f64.const 0x1.8p+0 (;=1.5;)
              local.set 886
              local.get 8
              local.get 886
              f64.store offset=16
            end
          end
          local.get 8
          i32.load offset=116
          local.set 887
          block  ;; label = @4
            local.get 887
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=120
            local.set 888
            local.get 888
            i32.load8_u
            local.set 889
            i32.const 24
            local.set 890
            local.get 889
            local.get 890
            i32.shl
            local.set 891
            local.get 891
            local.get 890
            i32.shr_s
            local.set 892
            i32.const 45
            local.set 893
            local.get 892
            local.set 894
            local.get 893
            local.set 895
            local.get 894
            local.get 895
            i32.eq
            local.set 896
            i32.const 1
            local.set 897
            local.get 896
            local.get 897
            i32.and
            local.set 898
            local.get 898
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            f64.load offset=24
            local.set 899
            f64.const -0x1p+0 (;=-1;)
            local.set 900
            local.get 899
            local.get 900
            f64.mul
            local.set 901
            local.get 8
            local.get 901
            f64.store offset=24
            local.get 8
            f64.load offset=16
            local.set 902
            f64.const -0x1p+0 (;=-1;)
            local.set 903
            local.get 902
            local.get 903
            f64.mul
            local.set 904
            local.get 8
            local.get 904
            f64.store offset=16
          end
          local.get 8
          i32.load offset=32
          local.set 905
          local.get 8
          i32.load offset=184
          local.set 906
          local.get 906
          i32.load
          local.set 907
          local.get 907
          local.get 905
          i32.sub
          local.set 908
          local.get 906
          local.get 908
          i32.store
          local.get 8
          f64.load offset=24
          local.set 909
          local.get 8
          f64.load offset=16
          local.set 910
          local.get 909
          local.get 910
          f64.add
          local.set 911
          local.get 8
          f64.load offset=24
          local.set 912
          local.get 911
          local.get 912
          f64.ne
          local.set 913
          i32.const 1
          local.set 914
          local.get 913
          local.get 914
          i32.and
          local.set 915
          block  ;; label = @4
            local.get 915
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=184
            local.set 916
            local.get 916
            i32.load
            local.set 917
            local.get 8
            i32.load offset=164
            local.set 918
            local.get 917
            local.get 918
            i32.add
            local.set 919
            local.get 8
            i32.load offset=184
            local.set 920
            local.get 920
            local.get 919
            i32.store
            block  ;; label = @5
              loop  ;; label = @6
                local.get 8
                i32.load offset=184
                local.set 921
                local.get 921
                i32.load
                local.set 922
                i32.const 999999999
                local.set 923
                local.get 922
                local.set 924
                local.get 923
                local.set 925
                local.get 924
                local.get 925
                i32.gt_u
                local.set 926
                i32.const 1
                local.set 927
                local.get 926
                local.get 927
                i32.and
                local.set 928
                local.get 928
                i32.eqz
                br_if 1 (;@5;)
                local.get 8
                i32.load offset=184
                local.set 929
                i32.const -4
                local.set 930
                local.get 929
                local.get 930
                i32.add
                local.set 931
                local.get 8
                local.get 931
                i32.store offset=184
                i32.const 0
                local.set 932
                local.get 929
                local.get 932
                i32.store
                local.get 8
                i32.load offset=184
                local.set 933
                local.get 8
                i32.load offset=188
                local.set 934
                local.get 933
                local.set 935
                local.get 934
                local.set 936
                local.get 935
                local.get 936
                i32.lt_u
                local.set 937
                i32.const 1
                local.set 938
                local.get 937
                local.get 938
                i32.and
                local.set 939
                block  ;; label = @7
                  local.get 939
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 8
                  i32.load offset=188
                  local.set 940
                  i32.const -4
                  local.set 941
                  local.get 940
                  local.get 941
                  i32.add
                  local.set 942
                  local.get 8
                  local.get 942
                  i32.store offset=188
                  i32.const 0
                  local.set 943
                  local.get 942
                  local.get 943
                  i32.store
                end
                local.get 8
                i32.load offset=184
                local.set 944
                local.get 944
                i32.load
                local.set 945
                i32.const 1
                local.set 946
                local.get 945
                local.get 946
                i32.add
                local.set 947
                local.get 944
                local.get 947
                i32.store
                br 0 (;@6;)
              end
            end
            i32.const 10
            local.set 948
            local.get 8
            local.get 948
            i32.store offset=164
            local.get 8
            i32.load offset=180
            local.set 949
            local.get 8
            i32.load offset=188
            local.set 950
            local.get 949
            local.get 950
            i32.sub
            local.set 951
            i32.const 2
            local.set 952
            local.get 951
            local.get 952
            i32.shr_s
            local.set 953
            i32.const 9
            local.set 954
            local.get 953
            local.get 954
            i32.mul
            local.set 955
            local.get 8
            local.get 955
            i32.store offset=168
            block  ;; label = @5
              loop  ;; label = @6
                local.get 8
                i32.load offset=188
                local.set 956
                local.get 956
                i32.load
                local.set 957
                local.get 8
                i32.load offset=164
                local.set 958
                local.get 957
                local.set 959
                local.get 958
                local.set 960
                local.get 959
                local.get 960
                i32.ge_u
                local.set 961
                i32.const 1
                local.set 962
                local.get 961
                local.get 962
                i32.and
                local.set 963
                local.get 963
                i32.eqz
                br_if 1 (;@5;)
                local.get 8
                i32.load offset=164
                local.set 964
                i32.const 10
                local.set 965
                local.get 964
                local.get 965
                i32.mul
                local.set 966
                local.get 8
                local.get 966
                i32.store offset=164
                local.get 8
                i32.load offset=168
                local.set 967
                i32.const 1
                local.set 968
                local.get 967
                local.get 968
                i32.add
                local.set 969
                local.get 8
                local.get 969
                i32.store offset=168
                br 0 (;@6;)
              end
            end
          end
        end
        local.get 8
        i32.load offset=176
        local.set 970
        local.get 8
        i32.load offset=184
        local.set 971
        i32.const 4
        local.set 972
        local.get 971
        local.get 972
        i32.add
        local.set 973
        local.get 970
        local.set 974
        local.get 973
        local.set 975
        local.get 974
        local.get 975
        i32.gt_u
        local.set 976
        i32.const 1
        local.set 977
        local.get 976
        local.get 977
        i32.and
        local.set 978
        block  ;; label = @3
          local.get 978
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.load offset=184
          local.set 979
          i32.const 4
          local.set 980
          local.get 979
          local.get 980
          i32.add
          local.set 981
          local.get 8
          local.get 981
          i32.store offset=176
        end
      end
      loop  ;; label = @2
        local.get 8
        i32.load offset=176
        local.set 982
        local.get 8
        i32.load offset=188
        local.set 983
        local.get 982
        local.set 984
        local.get 983
        local.set 985
        local.get 984
        local.get 985
        i32.gt_u
        local.set 986
        i32.const 0
        local.set 987
        i32.const 1
        local.set 988
        local.get 986
        local.get 988
        i32.and
        local.set 989
        local.get 987
        local.set 990
        block  ;; label = @3
          local.get 989
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.load offset=176
          local.set 991
          i32.const -4
          local.set 992
          local.get 991
          local.get 992
          i32.add
          local.set 993
          local.get 993
          i32.load
          local.set 994
          i32.const 0
          local.set 995
          local.get 994
          local.set 996
          local.get 995
          local.set 997
          local.get 996
          local.get 997
          i32.ne
          local.set 998
          i32.const -1
          local.set 999
          local.get 998
          local.get 999
          i32.xor
          local.set 1000
          local.get 1000
          local.set 990
        end
        local.get 990
        local.set 1001
        i32.const 1
        local.set 1002
        local.get 1001
        local.get 1002
        i32.and
        local.set 1003
        block  ;; label = @3
          local.get 1003
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.load offset=176
          local.set 1004
          i32.const -4
          local.set 1005
          local.get 1004
          local.get 1005
          i32.add
          local.set 1006
          local.get 8
          local.get 1006
          i32.store offset=176
          br 1 (;@2;)
        end
      end
      local.get 8
      i32.load offset=704
      local.set 1007
      i32.const 32
      local.set 1008
      local.get 1007
      local.get 1008
      i32.or
      local.set 1009
      i32.const 103
      local.set 1010
      local.get 1009
      local.set 1011
      local.get 1010
      local.set 1012
      local.get 1011
      local.get 1012
      i32.eq
      local.set 1013
      i32.const 1
      local.set 1014
      local.get 1013
      local.get 1014
      i32.and
      local.set 1015
      block  ;; label = @2
        local.get 1015
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        i32.load offset=712
        local.set 1016
        block  ;; label = @3
          local.get 1016
          br_if 0 (;@3;)
          local.get 8
          i32.load offset=712
          local.set 1017
          i32.const 1
          local.set 1018
          local.get 1017
          local.get 1018
          i32.add
          local.set 1019
          local.get 8
          local.get 1019
          i32.store offset=712
        end
        local.get 8
        i32.load offset=712
        local.set 1020
        local.get 8
        i32.load offset=168
        local.set 1021
        local.get 1020
        local.set 1022
        local.get 1021
        local.set 1023
        local.get 1022
        local.get 1023
        i32.gt_s
        local.set 1024
        i32.const 1
        local.set 1025
        local.get 1024
        local.get 1025
        i32.and
        local.set 1026
        block  ;; label = @3
          block  ;; label = @4
            local.get 1026
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=168
            local.set 1027
            i32.const -4
            local.set 1028
            local.get 1027
            local.set 1029
            local.get 1028
            local.set 1030
            local.get 1029
            local.get 1030
            i32.ge_s
            local.set 1031
            i32.const 1
            local.set 1032
            local.get 1031
            local.get 1032
            i32.and
            local.set 1033
            local.get 1033
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=704
            local.set 1034
            i32.const -1
            local.set 1035
            local.get 1034
            local.get 1035
            i32.add
            local.set 1036
            local.get 8
            local.get 1036
            i32.store offset=704
            local.get 8
            i32.load offset=168
            local.set 1037
            i32.const 1
            local.set 1038
            local.get 1037
            local.get 1038
            i32.add
            local.set 1039
            local.get 8
            i32.load offset=712
            local.set 1040
            local.get 1040
            local.get 1039
            i32.sub
            local.set 1041
            local.get 8
            local.get 1041
            i32.store offset=712
            br 1 (;@3;)
          end
          local.get 8
          i32.load offset=704
          local.set 1042
          i32.const 2
          local.set 1043
          local.get 1042
          local.get 1043
          i32.sub
          local.set 1044
          local.get 8
          local.get 1044
          i32.store offset=704
          local.get 8
          i32.load offset=712
          local.set 1045
          i32.const -1
          local.set 1046
          local.get 1045
          local.get 1046
          i32.add
          local.set 1047
          local.get 8
          local.get 1047
          i32.store offset=712
        end
        local.get 8
        i32.load offset=708
        local.set 1048
        i32.const 8
        local.set 1049
        local.get 1048
        local.get 1049
        i32.and
        local.set 1050
        block  ;; label = @3
          local.get 1050
          br_if 0 (;@3;)
          local.get 8
          i32.load offset=176
          local.set 1051
          local.get 8
          i32.load offset=188
          local.set 1052
          local.get 1051
          local.set 1053
          local.get 1052
          local.set 1054
          local.get 1053
          local.get 1054
          i32.gt_u
          local.set 1055
          i32.const 1
          local.set 1056
          local.get 1055
          local.get 1056
          i32.and
          local.set 1057
          block  ;; label = @4
            block  ;; label = @5
              local.get 1057
              i32.eqz
              br_if 0 (;@5;)
              local.get 8
              i32.load offset=176
              local.set 1058
              i32.const -4
              local.set 1059
              local.get 1058
              local.get 1059
              i32.add
              local.set 1060
              local.get 1060
              i32.load
              local.set 1061
              local.get 1061
              i32.eqz
              br_if 0 (;@5;)
              i32.const 10
              local.set 1062
              local.get 8
              local.get 1062
              i32.store offset=164
              i32.const 0
              local.set 1063
              local.get 8
              local.get 1063
              i32.store offset=160
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 8
                  i32.load offset=176
                  local.set 1064
                  i32.const -4
                  local.set 1065
                  local.get 1064
                  local.get 1065
                  i32.add
                  local.set 1066
                  local.get 1066
                  i32.load
                  local.set 1067
                  local.get 8
                  i32.load offset=164
                  local.set 1068
                  local.get 1067
                  local.get 1068
                  i32.rem_u
                  local.set 1069
                  local.get 1069
                  br_if 1 (;@6;)
                  local.get 8
                  i32.load offset=164
                  local.set 1070
                  i32.const 10
                  local.set 1071
                  local.get 1070
                  local.get 1071
                  i32.mul
                  local.set 1072
                  local.get 8
                  local.get 1072
                  i32.store offset=164
                  local.get 8
                  i32.load offset=160
                  local.set 1073
                  i32.const 1
                  local.set 1074
                  local.get 1073
                  local.get 1074
                  i32.add
                  local.set 1075
                  local.get 8
                  local.get 1075
                  i32.store offset=160
                  br 0 (;@7;)
                end
              end
              br 1 (;@4;)
            end
            i32.const 9
            local.set 1076
            local.get 8
            local.get 1076
            i32.store offset=160
          end
          local.get 8
          i32.load offset=704
          local.set 1077
          i32.const 32
          local.set 1078
          local.get 1077
          local.get 1078
          i32.or
          local.set 1079
          i32.const 102
          local.set 1080
          local.get 1079
          local.set 1081
          local.get 1080
          local.set 1082
          local.get 1081
          local.get 1082
          i32.eq
          local.set 1083
          i32.const 1
          local.set 1084
          local.get 1083
          local.get 1084
          i32.and
          local.set 1085
          block  ;; label = @4
            block  ;; label = @5
              local.get 1085
              i32.eqz
              br_if 0 (;@5;)
              local.get 8
              i32.load offset=712
              local.set 1086
              local.get 8
              i32.load offset=176
              local.set 1087
              local.get 8
              i32.load offset=180
              local.set 1088
              local.get 1087
              local.get 1088
              i32.sub
              local.set 1089
              i32.const 2
              local.set 1090
              local.get 1089
              local.get 1090
              i32.shr_s
              local.set 1091
              i32.const 1
              local.set 1092
              local.get 1091
              local.get 1092
              i32.sub
              local.set 1093
              i32.const 9
              local.set 1094
              local.get 1093
              local.get 1094
              i32.mul
              local.set 1095
              local.get 8
              i32.load offset=160
              local.set 1096
              local.get 1095
              local.get 1096
              i32.sub
              local.set 1097
              i32.const 0
              local.set 1098
              local.get 1098
              local.set 1099
              local.get 1097
              local.set 1100
              local.get 1099
              local.get 1100
              i32.gt_s
              local.set 1101
              i32.const 1
              local.set 1102
              local.get 1101
              local.get 1102
              i32.and
              local.set 1103
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1103
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 1104
                  local.get 1104
                  local.set 1105
                  br 1 (;@6;)
                end
                local.get 8
                i32.load offset=176
                local.set 1106
                local.get 8
                i32.load offset=180
                local.set 1107
                local.get 1106
                local.get 1107
                i32.sub
                local.set 1108
                i32.const 2
                local.set 1109
                local.get 1108
                local.get 1109
                i32.shr_s
                local.set 1110
                i32.const 1
                local.set 1111
                local.get 1110
                local.get 1111
                i32.sub
                local.set 1112
                i32.const 9
                local.set 1113
                local.get 1112
                local.get 1113
                i32.mul
                local.set 1114
                local.get 8
                i32.load offset=160
                local.set 1115
                local.get 1114
                local.get 1115
                i32.sub
                local.set 1116
                local.get 1116
                local.set 1105
              end
              local.get 1105
              local.set 1117
              local.get 1086
              local.set 1118
              local.get 1117
              local.set 1119
              local.get 1118
              local.get 1119
              i32.lt_s
              local.set 1120
              i32.const 1
              local.set 1121
              local.get 1120
              local.get 1121
              i32.and
              local.set 1122
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1122
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 8
                  i32.load offset=712
                  local.set 1123
                  local.get 1123
                  local.set 1124
                  br 1 (;@6;)
                end
                local.get 8
                i32.load offset=176
                local.set 1125
                local.get 8
                i32.load offset=180
                local.set 1126
                local.get 1125
                local.get 1126
                i32.sub
                local.set 1127
                i32.const 2
                local.set 1128
                local.get 1127
                local.get 1128
                i32.shr_s
                local.set 1129
                i32.const 1
                local.set 1130
                local.get 1129
                local.get 1130
                i32.sub
                local.set 1131
                i32.const 9
                local.set 1132
                local.get 1131
                local.get 1132
                i32.mul
                local.set 1133
                local.get 8
                i32.load offset=160
                local.set 1134
                local.get 1133
                local.get 1134
                i32.sub
                local.set 1135
                i32.const 0
                local.set 1136
                local.get 1136
                local.set 1137
                local.get 1135
                local.set 1138
                local.get 1137
                local.get 1138
                i32.gt_s
                local.set 1139
                i32.const 1
                local.set 1140
                local.get 1139
                local.get 1140
                i32.and
                local.set 1141
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1141
                    i32.eqz
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 1142
                    local.get 1142
                    local.set 1143
                    br 1 (;@7;)
                  end
                  local.get 8
                  i32.load offset=176
                  local.set 1144
                  local.get 8
                  i32.load offset=180
                  local.set 1145
                  local.get 1144
                  local.get 1145
                  i32.sub
                  local.set 1146
                  i32.const 2
                  local.set 1147
                  local.get 1146
                  local.get 1147
                  i32.shr_s
                  local.set 1148
                  i32.const 1
                  local.set 1149
                  local.get 1148
                  local.get 1149
                  i32.sub
                  local.set 1150
                  i32.const 9
                  local.set 1151
                  local.get 1150
                  local.get 1151
                  i32.mul
                  local.set 1152
                  local.get 8
                  i32.load offset=160
                  local.set 1153
                  local.get 1152
                  local.get 1153
                  i32.sub
                  local.set 1154
                  local.get 1154
                  local.set 1143
                end
                local.get 1143
                local.set 1155
                local.get 1155
                local.set 1124
              end
              local.get 1124
              local.set 1156
              local.get 8
              local.get 1156
              i32.store offset=712
              br 1 (;@4;)
            end
            local.get 8
            i32.load offset=712
            local.set 1157
            local.get 8
            i32.load offset=176
            local.set 1158
            local.get 8
            i32.load offset=180
            local.set 1159
            local.get 1158
            local.get 1159
            i32.sub
            local.set 1160
            i32.const 2
            local.set 1161
            local.get 1160
            local.get 1161
            i32.shr_s
            local.set 1162
            i32.const 1
            local.set 1163
            local.get 1162
            local.get 1163
            i32.sub
            local.set 1164
            i32.const 9
            local.set 1165
            local.get 1164
            local.get 1165
            i32.mul
            local.set 1166
            local.get 8
            i32.load offset=168
            local.set 1167
            local.get 1166
            local.get 1167
            i32.add
            local.set 1168
            local.get 8
            i32.load offset=160
            local.set 1169
            local.get 1168
            local.get 1169
            i32.sub
            local.set 1170
            i32.const 0
            local.set 1171
            local.get 1171
            local.set 1172
            local.get 1170
            local.set 1173
            local.get 1172
            local.get 1173
            i32.gt_s
            local.set 1174
            i32.const 1
            local.set 1175
            local.get 1174
            local.get 1175
            i32.and
            local.set 1176
            block  ;; label = @5
              block  ;; label = @6
                local.get 1176
                i32.eqz
                br_if 0 (;@6;)
                i32.const 0
                local.set 1177
                local.get 1177
                local.set 1178
                br 1 (;@5;)
              end
              local.get 8
              i32.load offset=176
              local.set 1179
              local.get 8
              i32.load offset=180
              local.set 1180
              local.get 1179
              local.get 1180
              i32.sub
              local.set 1181
              i32.const 2
              local.set 1182
              local.get 1181
              local.get 1182
              i32.shr_s
              local.set 1183
              i32.const 1
              local.set 1184
              local.get 1183
              local.get 1184
              i32.sub
              local.set 1185
              i32.const 9
              local.set 1186
              local.get 1185
              local.get 1186
              i32.mul
              local.set 1187
              local.get 8
              i32.load offset=168
              local.set 1188
              local.get 1187
              local.get 1188
              i32.add
              local.set 1189
              local.get 8
              i32.load offset=160
              local.set 1190
              local.get 1189
              local.get 1190
              i32.sub
              local.set 1191
              local.get 1191
              local.set 1178
            end
            local.get 1178
            local.set 1192
            local.get 1157
            local.set 1193
            local.get 1192
            local.set 1194
            local.get 1193
            local.get 1194
            i32.lt_s
            local.set 1195
            i32.const 1
            local.set 1196
            local.get 1195
            local.get 1196
            i32.and
            local.set 1197
            block  ;; label = @5
              block  ;; label = @6
                local.get 1197
                i32.eqz
                br_if 0 (;@6;)
                local.get 8
                i32.load offset=712
                local.set 1198
                local.get 1198
                local.set 1199
                br 1 (;@5;)
              end
              local.get 8
              i32.load offset=176
              local.set 1200
              local.get 8
              i32.load offset=180
              local.set 1201
              local.get 1200
              local.get 1201
              i32.sub
              local.set 1202
              i32.const 2
              local.set 1203
              local.get 1202
              local.get 1203
              i32.shr_s
              local.set 1204
              i32.const 1
              local.set 1205
              local.get 1204
              local.get 1205
              i32.sub
              local.set 1206
              i32.const 9
              local.set 1207
              local.get 1206
              local.get 1207
              i32.mul
              local.set 1208
              local.get 8
              i32.load offset=168
              local.set 1209
              local.get 1208
              local.get 1209
              i32.add
              local.set 1210
              local.get 8
              i32.load offset=160
              local.set 1211
              local.get 1210
              local.get 1211
              i32.sub
              local.set 1212
              i32.const 0
              local.set 1213
              local.get 1213
              local.set 1214
              local.get 1212
              local.set 1215
              local.get 1214
              local.get 1215
              i32.gt_s
              local.set 1216
              i32.const 1
              local.set 1217
              local.get 1216
              local.get 1217
              i32.and
              local.set 1218
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1218
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 1219
                  local.get 1219
                  local.set 1220
                  br 1 (;@6;)
                end
                local.get 8
                i32.load offset=176
                local.set 1221
                local.get 8
                i32.load offset=180
                local.set 1222
                local.get 1221
                local.get 1222
                i32.sub
                local.set 1223
                i32.const 2
                local.set 1224
                local.get 1223
                local.get 1224
                i32.shr_s
                local.set 1225
                i32.const 1
                local.set 1226
                local.get 1225
                local.get 1226
                i32.sub
                local.set 1227
                i32.const 9
                local.set 1228
                local.get 1227
                local.get 1228
                i32.mul
                local.set 1229
                local.get 8
                i32.load offset=168
                local.set 1230
                local.get 1229
                local.get 1230
                i32.add
                local.set 1231
                local.get 8
                i32.load offset=160
                local.set 1232
                local.get 1231
                local.get 1232
                i32.sub
                local.set 1233
                local.get 1233
                local.set 1220
              end
              local.get 1220
              local.set 1234
              local.get 1234
              local.set 1199
            end
            local.get 1199
            local.set 1235
            local.get 8
            local.get 1235
            i32.store offset=712
          end
        end
      end
      local.get 8
      i32.load offset=712
      local.set 1236
      local.get 8
      i32.load offset=712
      local.set 1237
      i32.const 1
      local.set 1238
      local.get 1238
      local.set 1239
      block  ;; label = @2
        local.get 1237
        br_if 0 (;@2;)
        local.get 8
        i32.load offset=708
        local.set 1240
        i32.const 8
        local.set 1241
        local.get 1240
        local.get 1241
        i32.and
        local.set 1242
        i32.const 0
        local.set 1243
        local.get 1242
        local.set 1244
        local.get 1243
        local.set 1245
        local.get 1244
        local.get 1245
        i32.ne
        local.set 1246
        local.get 1246
        local.set 1239
      end
      local.get 1239
      local.set 1247
      i32.const 1
      local.set 1248
      local.get 1247
      local.get 1248
      i32.and
      local.set 1249
      i32.const 2147483646
      local.set 1250
      local.get 1250
      local.get 1249
      i32.sub
      local.set 1251
      local.get 1236
      local.set 1252
      local.get 1251
      local.set 1253
      local.get 1252
      local.get 1253
      i32.gt_s
      local.set 1254
      i32.const 1
      local.set 1255
      local.get 1254
      local.get 1255
      i32.and
      local.set 1256
      block  ;; label = @2
        local.get 1256
        i32.eqz
        br_if 0 (;@2;)
        i32.const -1
        local.set 1257
        local.get 8
        local.get 1257
        i32.store offset=732
        br 1 (;@1;)
      end
      local.get 8
      i32.load offset=712
      local.set 1258
      i32.const 1
      local.set 1259
      local.get 1258
      local.get 1259
      i32.add
      local.set 1260
      local.get 8
      i32.load offset=712
      local.set 1261
      i32.const 1
      local.set 1262
      local.get 1262
      local.set 1263
      block  ;; label = @2
        local.get 1261
        br_if 0 (;@2;)
        local.get 8
        i32.load offset=708
        local.set 1264
        i32.const 8
        local.set 1265
        local.get 1264
        local.get 1265
        i32.and
        local.set 1266
        i32.const 0
        local.set 1267
        local.get 1266
        local.set 1268
        local.get 1267
        local.set 1269
        local.get 1268
        local.get 1269
        i32.ne
        local.set 1270
        local.get 1270
        local.set 1263
      end
      local.get 1263
      local.set 1271
      i32.const 1
      local.set 1272
      local.get 1271
      local.get 1272
      i32.and
      local.set 1273
      local.get 1260
      local.get 1273
      i32.add
      local.set 1274
      local.get 8
      local.get 1274
      i32.store offset=156
      local.get 8
      i32.load offset=704
      local.set 1275
      i32.const 32
      local.set 1276
      local.get 1275
      local.get 1276
      i32.or
      local.set 1277
      i32.const 102
      local.set 1278
      local.get 1277
      local.set 1279
      local.get 1278
      local.set 1280
      local.get 1279
      local.get 1280
      i32.eq
      local.set 1281
      i32.const 1
      local.set 1282
      local.get 1281
      local.get 1282
      i32.and
      local.set 1283
      block  ;; label = @2
        block  ;; label = @3
          local.get 1283
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.load offset=168
          local.set 1284
          local.get 8
          i32.load offset=156
          local.set 1285
          i32.const 2147483647
          local.set 1286
          local.get 1286
          local.get 1285
          i32.sub
          local.set 1287
          local.get 1284
          local.set 1288
          local.get 1287
          local.set 1289
          local.get 1288
          local.get 1289
          i32.gt_s
          local.set 1290
          i32.const 1
          local.set 1291
          local.get 1290
          local.get 1291
          i32.and
          local.set 1292
          block  ;; label = @4
            local.get 1292
            i32.eqz
            br_if 0 (;@4;)
            i32.const -1
            local.set 1293
            local.get 8
            local.get 1293
            i32.store offset=732
            br 3 (;@1;)
          end
          local.get 8
          i32.load offset=168
          local.set 1294
          i32.const 0
          local.set 1295
          local.get 1294
          local.set 1296
          local.get 1295
          local.set 1297
          local.get 1296
          local.get 1297
          i32.gt_s
          local.set 1298
          i32.const 1
          local.set 1299
          local.get 1298
          local.get 1299
          i32.and
          local.set 1300
          block  ;; label = @4
            local.get 1300
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=168
            local.set 1301
            local.get 8
            i32.load offset=156
            local.set 1302
            local.get 1302
            local.get 1301
            i32.add
            local.set 1303
            local.get 8
            local.get 1303
            i32.store offset=156
          end
          br 1 (;@2;)
        end
        local.get 8
        i32.load offset=168
        local.set 1304
        i32.const 0
        local.set 1305
        local.get 1304
        local.set 1306
        local.get 1305
        local.set 1307
        local.get 1306
        local.get 1307
        i32.lt_s
        local.set 1308
        i32.const 1
        local.set 1309
        local.get 1308
        local.get 1309
        i32.and
        local.set 1310
        block  ;; label = @3
          block  ;; label = @4
            local.get 1310
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=168
            local.set 1311
            i32.const 0
            local.set 1312
            local.get 1312
            local.get 1311
            i32.sub
            local.set 1313
            local.get 1313
            local.set 1314
            br 1 (;@3;)
          end
          local.get 8
          i32.load offset=168
          local.set 1315
          local.get 1315
          local.set 1314
        end
        local.get 1314
        local.set 1316
        local.get 1316
        local.set 1317
        local.get 1317
        i64.extend_i32_s
        local.set 1318
        local.get 8
        i32.load offset=100
        local.set 1319
        local.get 1318
        local.get 1319
        call $fmt_u
        local.set 1320
        local.get 8
        local.get 1320
        i32.store offset=96
        block  ;; label = @3
          loop  ;; label = @4
            local.get 8
            i32.load offset=100
            local.set 1321
            local.get 8
            i32.load offset=96
            local.set 1322
            local.get 1321
            local.get 1322
            i32.sub
            local.set 1323
            i32.const 2
            local.set 1324
            local.get 1323
            local.set 1325
            local.get 1324
            local.set 1326
            local.get 1325
            local.get 1326
            i32.lt_s
            local.set 1327
            i32.const 1
            local.set 1328
            local.get 1327
            local.get 1328
            i32.and
            local.set 1329
            local.get 1329
            i32.eqz
            br_if 1 (;@3;)
            local.get 8
            i32.load offset=96
            local.set 1330
            i32.const -1
            local.set 1331
            local.get 1330
            local.get 1331
            i32.add
            local.set 1332
            local.get 8
            local.get 1332
            i32.store offset=96
            i32.const 48
            local.set 1333
            local.get 1332
            local.get 1333
            i32.store8
            br 0 (;@4;)
          end
        end
        local.get 8
        i32.load offset=168
        local.set 1334
        i32.const 0
        local.set 1335
        local.get 1334
        local.set 1336
        local.get 1335
        local.set 1337
        local.get 1336
        local.get 1337
        i32.lt_s
        local.set 1338
        i32.const 45
        local.set 1339
        i32.const 43
        local.set 1340
        i32.const 1
        local.set 1341
        local.get 1338
        local.get 1341
        i32.and
        local.set 1342
        local.get 1339
        local.get 1340
        local.get 1342
        select
        local.set 1343
        local.get 8
        i32.load offset=96
        local.set 1344
        i32.const -1
        local.set 1345
        local.get 1344
        local.get 1345
        i32.add
        local.set 1346
        local.get 8
        local.get 1346
        i32.store offset=96
        local.get 1346
        local.get 1343
        i32.store8
        local.get 8
        i32.load offset=704
        local.set 1347
        local.get 8
        i32.load offset=96
        local.set 1348
        i32.const -1
        local.set 1349
        local.get 1348
        local.get 1349
        i32.add
        local.set 1350
        local.get 8
        local.get 1350
        i32.store offset=96
        local.get 1350
        local.get 1347
        i32.store8
        local.get 8
        i32.load offset=100
        local.set 1351
        local.get 8
        i32.load offset=96
        local.set 1352
        local.get 1351
        local.get 1352
        i32.sub
        local.set 1353
        local.get 8
        i32.load offset=156
        local.set 1354
        i32.const 2147483647
        local.set 1355
        local.get 1355
        local.get 1354
        i32.sub
        local.set 1356
        local.get 1353
        local.set 1357
        local.get 1356
        local.set 1358
        local.get 1357
        local.get 1358
        i32.gt_s
        local.set 1359
        i32.const 1
        local.set 1360
        local.get 1359
        local.get 1360
        i32.and
        local.set 1361
        block  ;; label = @3
          local.get 1361
          i32.eqz
          br_if 0 (;@3;)
          i32.const -1
          local.set 1362
          local.get 8
          local.get 1362
          i32.store offset=732
          br 2 (;@1;)
        end
        local.get 8
        i32.load offset=100
        local.set 1363
        local.get 8
        i32.load offset=96
        local.set 1364
        local.get 1363
        local.get 1364
        i32.sub
        local.set 1365
        local.get 8
        i32.load offset=156
        local.set 1366
        local.get 1366
        local.get 1365
        i32.add
        local.set 1367
        local.get 8
        local.get 1367
        i32.store offset=156
      end
      local.get 8
      i32.load offset=156
      local.set 1368
      local.get 8
      i32.load offset=116
      local.set 1369
      i32.const 2147483647
      local.set 1370
      local.get 1370
      local.get 1369
      i32.sub
      local.set 1371
      local.get 1368
      local.set 1372
      local.get 1371
      local.set 1373
      local.get 1372
      local.get 1373
      i32.gt_s
      local.set 1374
      i32.const 1
      local.set 1375
      local.get 1374
      local.get 1375
      i32.and
      local.set 1376
      block  ;; label = @2
        local.get 1376
        i32.eqz
        br_if 0 (;@2;)
        i32.const -1
        local.set 1377
        local.get 8
        local.get 1377
        i32.store offset=732
        br 1 (;@1;)
      end
      local.get 8
      i32.load offset=728
      local.set 1378
      local.get 8
      i32.load offset=716
      local.set 1379
      local.get 8
      i32.load offset=116
      local.set 1380
      local.get 8
      i32.load offset=156
      local.set 1381
      local.get 1380
      local.get 1381
      i32.add
      local.set 1382
      local.get 8
      i32.load offset=708
      local.set 1383
      i32.const 32
      local.set 1384
      i32.const 24
      local.set 1385
      local.get 1384
      local.get 1385
      i32.shl
      local.set 1386
      local.get 1386
      local.get 1385
      i32.shr_s
      local.set 1387
      local.get 1378
      local.get 1387
      local.get 1379
      local.get 1382
      local.get 1383
      call $pad
      local.get 8
      i32.load offset=728
      local.set 1388
      local.get 8
      i32.load offset=120
      local.set 1389
      local.get 8
      i32.load offset=116
      local.set 1390
      local.get 1388
      local.get 1389
      local.get 1390
      call $out
      local.get 8
      i32.load offset=728
      local.set 1391
      local.get 8
      i32.load offset=716
      local.set 1392
      local.get 8
      i32.load offset=116
      local.set 1393
      local.get 8
      i32.load offset=156
      local.set 1394
      local.get 1393
      local.get 1394
      i32.add
      local.set 1395
      local.get 8
      i32.load offset=708
      local.set 1396
      i32.const 65536
      local.set 1397
      local.get 1396
      local.get 1397
      i32.xor
      local.set 1398
      i32.const 48
      local.set 1399
      i32.const 24
      local.set 1400
      local.get 1399
      local.get 1400
      i32.shl
      local.set 1401
      local.get 1401
      local.get 1400
      i32.shr_s
      local.set 1402
      local.get 1391
      local.get 1402
      local.get 1392
      local.get 1395
      local.get 1398
      call $pad
      local.get 8
      i32.load offset=704
      local.set 1403
      i32.const 32
      local.set 1404
      local.get 1403
      local.get 1404
      i32.or
      local.set 1405
      i32.const 102
      local.set 1406
      local.get 1405
      local.set 1407
      local.get 1406
      local.set 1408
      local.get 1407
      local.get 1408
      i32.eq
      local.set 1409
      i32.const 1
      local.set 1410
      local.get 1409
      local.get 1410
      i32.and
      local.set 1411
      block  ;; label = @2
        block  ;; label = @3
          local.get 1411
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.load offset=188
          local.set 1412
          local.get 8
          i32.load offset=180
          local.set 1413
          local.get 1412
          local.set 1414
          local.get 1413
          local.set 1415
          local.get 1414
          local.get 1415
          i32.gt_u
          local.set 1416
          i32.const 1
          local.set 1417
          local.get 1416
          local.get 1417
          i32.and
          local.set 1418
          block  ;; label = @4
            local.get 1418
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=180
            local.set 1419
            local.get 8
            local.get 1419
            i32.store offset=188
          end
          local.get 8
          i32.load offset=188
          local.set 1420
          local.get 8
          local.get 1420
          i32.store offset=184
          block  ;; label = @4
            loop  ;; label = @5
              local.get 8
              i32.load offset=184
              local.set 1421
              local.get 8
              i32.load offset=180
              local.set 1422
              local.get 1421
              local.set 1423
              local.get 1422
              local.set 1424
              local.get 1423
              local.get 1424
              i32.le_u
              local.set 1425
              i32.const 1
              local.set 1426
              local.get 1425
              local.get 1426
              i32.and
              local.set 1427
              local.get 1427
              i32.eqz
              br_if 1 (;@4;)
              local.get 8
              i32.load offset=184
              local.set 1428
              local.get 1428
              i32.load
              local.set 1429
              local.get 1429
              local.set 1430
              local.get 1430
              i64.extend_i32_u
              local.set 1431
              i32.const 128
              local.set 1432
              local.get 8
              local.get 1432
              i32.add
              local.set 1433
              local.get 1433
              local.set 1434
              i32.const 9
              local.set 1435
              local.get 1434
              local.get 1435
              i32.add
              local.set 1436
              local.get 1431
              local.get 1436
              call $fmt_u
              local.set 1437
              local.get 8
              local.get 1437
              i32.store offset=12
              local.get 8
              i32.load offset=184
              local.set 1438
              local.get 8
              i32.load offset=188
              local.set 1439
              local.get 1438
              local.set 1440
              local.get 1439
              local.set 1441
              local.get 1440
              local.get 1441
              i32.ne
              local.set 1442
              i32.const 1
              local.set 1443
              local.get 1442
              local.get 1443
              i32.and
              local.set 1444
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1444
                  i32.eqz
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    loop  ;; label = @9
                      local.get 8
                      i32.load offset=12
                      local.set 1445
                      i32.const 128
                      local.set 1446
                      local.get 8
                      local.get 1446
                      i32.add
                      local.set 1447
                      local.get 1447
                      local.set 1448
                      local.get 1445
                      local.set 1449
                      local.get 1448
                      local.set 1450
                      local.get 1449
                      local.get 1450
                      i32.gt_u
                      local.set 1451
                      i32.const 1
                      local.set 1452
                      local.get 1451
                      local.get 1452
                      i32.and
                      local.set 1453
                      local.get 1453
                      i32.eqz
                      br_if 1 (;@8;)
                      local.get 8
                      i32.load offset=12
                      local.set 1454
                      i32.const -1
                      local.set 1455
                      local.get 1454
                      local.get 1455
                      i32.add
                      local.set 1456
                      local.get 8
                      local.get 1456
                      i32.store offset=12
                      i32.const 48
                      local.set 1457
                      local.get 1456
                      local.get 1457
                      i32.store8
                      br 0 (;@9;)
                    end
                  end
                  br 1 (;@6;)
                end
                local.get 8
                i32.load offset=12
                local.set 1458
                i32.const 128
                local.set 1459
                local.get 8
                local.get 1459
                i32.add
                local.set 1460
                local.get 1460
                local.set 1461
                i32.const 9
                local.set 1462
                local.get 1461
                local.get 1462
                i32.add
                local.set 1463
                local.get 1458
                local.set 1464
                local.get 1463
                local.set 1465
                local.get 1464
                local.get 1465
                i32.eq
                local.set 1466
                i32.const 1
                local.set 1467
                local.get 1466
                local.get 1467
                i32.and
                local.set 1468
                block  ;; label = @7
                  local.get 1468
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 8
                  i32.load offset=12
                  local.set 1469
                  i32.const -1
                  local.set 1470
                  local.get 1469
                  local.get 1470
                  i32.add
                  local.set 1471
                  local.get 8
                  local.get 1471
                  i32.store offset=12
                  i32.const 48
                  local.set 1472
                  local.get 1471
                  local.get 1472
                  i32.store8
                end
              end
              local.get 8
              i32.load offset=728
              local.set 1473
              local.get 8
              i32.load offset=12
              local.set 1474
              i32.const 128
              local.set 1475
              local.get 8
              local.get 1475
              i32.add
              local.set 1476
              local.get 1476
              local.set 1477
              i32.const 9
              local.set 1478
              local.get 1477
              local.get 1478
              i32.add
              local.set 1479
              local.get 8
              i32.load offset=12
              local.set 1480
              local.get 1479
              local.get 1480
              i32.sub
              local.set 1481
              local.get 1473
              local.get 1474
              local.get 1481
              call $out
              local.get 8
              i32.load offset=184
              local.set 1482
              i32.const 4
              local.set 1483
              local.get 1482
              local.get 1483
              i32.add
              local.set 1484
              local.get 8
              local.get 1484
              i32.store offset=184
              br 0 (;@5;)
            end
          end
          local.get 8
          i32.load offset=712
          local.set 1485
          block  ;; label = @4
            block  ;; label = @5
              local.get 1485
              br_if 0 (;@5;)
              local.get 8
              i32.load offset=708
              local.set 1486
              i32.const 8
              local.set 1487
              local.get 1486
              local.get 1487
              i32.and
              local.set 1488
              local.get 1488
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 8
            i32.load offset=728
            local.set 1489
            i32.const 2957
            local.set 1490
            i32.const 1
            local.set 1491
            local.get 1489
            local.get 1490
            local.get 1491
            call $out
          end
          loop  ;; label = @4
            local.get 8
            i32.load offset=184
            local.set 1492
            local.get 8
            i32.load offset=176
            local.set 1493
            local.get 1492
            local.set 1494
            local.get 1493
            local.set 1495
            local.get 1494
            local.get 1495
            i32.lt_u
            local.set 1496
            i32.const 0
            local.set 1497
            i32.const 1
            local.set 1498
            local.get 1496
            local.get 1498
            i32.and
            local.set 1499
            local.get 1497
            local.set 1500
            block  ;; label = @5
              local.get 1499
              i32.eqz
              br_if 0 (;@5;)
              local.get 8
              i32.load offset=712
              local.set 1501
              i32.const 0
              local.set 1502
              local.get 1501
              local.set 1503
              local.get 1502
              local.set 1504
              local.get 1503
              local.get 1504
              i32.gt_s
              local.set 1505
              local.get 1505
              local.set 1500
            end
            local.get 1500
            local.set 1506
            i32.const 1
            local.set 1507
            local.get 1506
            local.get 1507
            i32.and
            local.set 1508
            block  ;; label = @5
              local.get 1508
              i32.eqz
              br_if 0 (;@5;)
              local.get 8
              i32.load offset=184
              local.set 1509
              local.get 1509
              i32.load
              local.set 1510
              local.get 1510
              local.set 1511
              local.get 1511
              i64.extend_i32_u
              local.set 1512
              i32.const 128
              local.set 1513
              local.get 8
              local.get 1513
              i32.add
              local.set 1514
              local.get 1514
              local.set 1515
              i32.const 9
              local.set 1516
              local.get 1515
              local.get 1516
              i32.add
              local.set 1517
              local.get 1512
              local.get 1517
              call $fmt_u
              local.set 1518
              local.get 8
              local.get 1518
              i32.store offset=8
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 8
                  i32.load offset=8
                  local.set 1519
                  i32.const 128
                  local.set 1520
                  local.get 8
                  local.get 1520
                  i32.add
                  local.set 1521
                  local.get 1521
                  local.set 1522
                  local.get 1519
                  local.set 1523
                  local.get 1522
                  local.set 1524
                  local.get 1523
                  local.get 1524
                  i32.gt_u
                  local.set 1525
                  i32.const 1
                  local.set 1526
                  local.get 1525
                  local.get 1526
                  i32.and
                  local.set 1527
                  local.get 1527
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 8
                  i32.load offset=8
                  local.set 1528
                  i32.const -1
                  local.set 1529
                  local.get 1528
                  local.get 1529
                  i32.add
                  local.set 1530
                  local.get 8
                  local.get 1530
                  i32.store offset=8
                  i32.const 48
                  local.set 1531
                  local.get 1530
                  local.get 1531
                  i32.store8
                  br 0 (;@7;)
                end
              end
              local.get 8
              i32.load offset=728
              local.set 1532
              local.get 8
              i32.load offset=8
              local.set 1533
              local.get 8
              i32.load offset=712
              local.set 1534
              i32.const 9
              local.set 1535
              local.get 1535
              local.set 1536
              local.get 1534
              local.set 1537
              local.get 1536
              local.get 1537
              i32.lt_s
              local.set 1538
              i32.const 1
              local.set 1539
              local.get 1538
              local.get 1539
              i32.and
              local.set 1540
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1540
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 9
                  local.set 1541
                  local.get 1541
                  local.set 1542
                  br 1 (;@6;)
                end
                local.get 8
                i32.load offset=712
                local.set 1543
                local.get 1543
                local.set 1542
              end
              local.get 1542
              local.set 1544
              local.get 1532
              local.get 1533
              local.get 1544
              call $out
              local.get 8
              i32.load offset=184
              local.set 1545
              i32.const 4
              local.set 1546
              local.get 1545
              local.get 1546
              i32.add
              local.set 1547
              local.get 8
              local.get 1547
              i32.store offset=184
              local.get 8
              i32.load offset=712
              local.set 1548
              i32.const 9
              local.set 1549
              local.get 1548
              local.get 1549
              i32.sub
              local.set 1550
              local.get 8
              local.get 1550
              i32.store offset=712
              br 1 (;@4;)
            end
          end
          local.get 8
          i32.load offset=728
          local.set 1551
          local.get 8
          i32.load offset=712
          local.set 1552
          i32.const 9
          local.set 1553
          local.get 1552
          local.get 1553
          i32.add
          local.set 1554
          i32.const 48
          local.set 1555
          i32.const 9
          local.set 1556
          i32.const 0
          local.set 1557
          i32.const 24
          local.set 1558
          local.get 1555
          local.get 1558
          i32.shl
          local.set 1559
          local.get 1559
          local.get 1558
          i32.shr_s
          local.set 1560
          local.get 1551
          local.get 1560
          local.get 1554
          local.get 1556
          local.get 1557
          call $pad
          br 1 (;@2;)
        end
        local.get 8
        i32.load offset=176
        local.set 1561
        local.get 8
        i32.load offset=188
        local.set 1562
        local.get 1561
        local.set 1563
        local.get 1562
        local.set 1564
        local.get 1563
        local.get 1564
        i32.le_u
        local.set 1565
        i32.const 1
        local.set 1566
        local.get 1565
        local.get 1566
        i32.and
        local.set 1567
        block  ;; label = @3
          local.get 1567
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.load offset=188
          local.set 1568
          i32.const 4
          local.set 1569
          local.get 1568
          local.get 1569
          i32.add
          local.set 1570
          local.get 8
          local.get 1570
          i32.store offset=176
        end
        local.get 8
        i32.load offset=188
        local.set 1571
        local.get 8
        local.get 1571
        i32.store offset=184
        loop  ;; label = @3
          local.get 8
          i32.load offset=184
          local.set 1572
          local.get 8
          i32.load offset=176
          local.set 1573
          local.get 1572
          local.set 1574
          local.get 1573
          local.set 1575
          local.get 1574
          local.get 1575
          i32.lt_u
          local.set 1576
          i32.const 0
          local.set 1577
          i32.const 1
          local.set 1578
          local.get 1576
          local.get 1578
          i32.and
          local.set 1579
          local.get 1577
          local.set 1580
          block  ;; label = @4
            local.get 1579
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=712
            local.set 1581
            i32.const 0
            local.set 1582
            local.get 1581
            local.set 1583
            local.get 1582
            local.set 1584
            local.get 1583
            local.get 1584
            i32.ge_s
            local.set 1585
            local.get 1585
            local.set 1580
          end
          local.get 1580
          local.set 1586
          i32.const 1
          local.set 1587
          local.get 1586
          local.get 1587
          i32.and
          local.set 1588
          block  ;; label = @4
            local.get 1588
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=184
            local.set 1589
            local.get 1589
            i32.load
            local.set 1590
            local.get 1590
            local.set 1591
            local.get 1591
            i64.extend_i32_u
            local.set 1592
            i32.const 128
            local.set 1593
            local.get 8
            local.get 1593
            i32.add
            local.set 1594
            local.get 1594
            local.set 1595
            i32.const 9
            local.set 1596
            local.get 1595
            local.get 1596
            i32.add
            local.set 1597
            local.get 1592
            local.get 1597
            call $fmt_u
            local.set 1598
            local.get 8
            local.get 1598
            i32.store offset=4
            local.get 8
            i32.load offset=4
            local.set 1599
            i32.const 128
            local.set 1600
            local.get 8
            local.get 1600
            i32.add
            local.set 1601
            local.get 1601
            local.set 1602
            i32.const 9
            local.set 1603
            local.get 1602
            local.get 1603
            i32.add
            local.set 1604
            local.get 1599
            local.set 1605
            local.get 1604
            local.set 1606
            local.get 1605
            local.get 1606
            i32.eq
            local.set 1607
            i32.const 1
            local.set 1608
            local.get 1607
            local.get 1608
            i32.and
            local.set 1609
            block  ;; label = @5
              local.get 1609
              i32.eqz
              br_if 0 (;@5;)
              local.get 8
              i32.load offset=4
              local.set 1610
              i32.const -1
              local.set 1611
              local.get 1610
              local.get 1611
              i32.add
              local.set 1612
              local.get 8
              local.get 1612
              i32.store offset=4
              i32.const 48
              local.set 1613
              local.get 1612
              local.get 1613
              i32.store8
            end
            local.get 8
            i32.load offset=184
            local.set 1614
            local.get 8
            i32.load offset=188
            local.set 1615
            local.get 1614
            local.set 1616
            local.get 1615
            local.set 1617
            local.get 1616
            local.get 1617
            i32.ne
            local.set 1618
            i32.const 1
            local.set 1619
            local.get 1618
            local.get 1619
            i32.and
            local.set 1620
            block  ;; label = @5
              block  ;; label = @6
                local.get 1620
                i32.eqz
                br_if 0 (;@6;)
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 8
                    i32.load offset=4
                    local.set 1621
                    i32.const 128
                    local.set 1622
                    local.get 8
                    local.get 1622
                    i32.add
                    local.set 1623
                    local.get 1623
                    local.set 1624
                    local.get 1621
                    local.set 1625
                    local.get 1624
                    local.set 1626
                    local.get 1625
                    local.get 1626
                    i32.gt_u
                    local.set 1627
                    i32.const 1
                    local.set 1628
                    local.get 1627
                    local.get 1628
                    i32.and
                    local.set 1629
                    local.get 1629
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 8
                    i32.load offset=4
                    local.set 1630
                    i32.const -1
                    local.set 1631
                    local.get 1630
                    local.get 1631
                    i32.add
                    local.set 1632
                    local.get 8
                    local.get 1632
                    i32.store offset=4
                    i32.const 48
                    local.set 1633
                    local.get 1632
                    local.get 1633
                    i32.store8
                    br 0 (;@8;)
                  end
                end
                br 1 (;@5;)
              end
              local.get 8
              i32.load offset=728
              local.set 1634
              local.get 8
              i32.load offset=4
              local.set 1635
              i32.const 1
              local.set 1636
              local.get 1635
              local.get 1636
              i32.add
              local.set 1637
              local.get 8
              local.get 1637
              i32.store offset=4
              i32.const 1
              local.set 1638
              local.get 1634
              local.get 1635
              local.get 1638
              call $out
              local.get 8
              i32.load offset=712
              local.set 1639
              i32.const 0
              local.set 1640
              local.get 1639
              local.set 1641
              local.get 1640
              local.set 1642
              local.get 1641
              local.get 1642
              i32.gt_s
              local.set 1643
              i32.const 1
              local.set 1644
              local.get 1643
              local.get 1644
              i32.and
              local.set 1645
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1645
                  br_if 0 (;@7;)
                  local.get 8
                  i32.load offset=708
                  local.set 1646
                  i32.const 8
                  local.set 1647
                  local.get 1646
                  local.get 1647
                  i32.and
                  local.set 1648
                  local.get 1648
                  i32.eqz
                  br_if 1 (;@6;)
                end
                local.get 8
                i32.load offset=728
                local.set 1649
                i32.const 2957
                local.set 1650
                i32.const 1
                local.set 1651
                local.get 1649
                local.get 1650
                local.get 1651
                call $out
              end
            end
            local.get 8
            i32.load offset=728
            local.set 1652
            local.get 8
            i32.load offset=4
            local.set 1653
            i32.const 128
            local.set 1654
            local.get 8
            local.get 1654
            i32.add
            local.set 1655
            local.get 1655
            local.set 1656
            i32.const 9
            local.set 1657
            local.get 1656
            local.get 1657
            i32.add
            local.set 1658
            local.get 8
            i32.load offset=4
            local.set 1659
            local.get 1658
            local.get 1659
            i32.sub
            local.set 1660
            local.get 8
            i32.load offset=712
            local.set 1661
            local.get 1660
            local.set 1662
            local.get 1661
            local.set 1663
            local.get 1662
            local.get 1663
            i32.lt_s
            local.set 1664
            i32.const 1
            local.set 1665
            local.get 1664
            local.get 1665
            i32.and
            local.set 1666
            block  ;; label = @5
              block  ;; label = @6
                local.get 1666
                i32.eqz
                br_if 0 (;@6;)
                i32.const 128
                local.set 1667
                local.get 8
                local.get 1667
                i32.add
                local.set 1668
                local.get 1668
                local.set 1669
                i32.const 9
                local.set 1670
                local.get 1669
                local.get 1670
                i32.add
                local.set 1671
                local.get 8
                i32.load offset=4
                local.set 1672
                local.get 1671
                local.get 1672
                i32.sub
                local.set 1673
                local.get 1673
                local.set 1674
                br 1 (;@5;)
              end
              local.get 8
              i32.load offset=712
              local.set 1675
              local.get 1675
              local.set 1674
            end
            local.get 1674
            local.set 1676
            local.get 1652
            local.get 1653
            local.get 1676
            call $out
            i32.const 128
            local.set 1677
            local.get 8
            local.get 1677
            i32.add
            local.set 1678
            local.get 1678
            local.set 1679
            i32.const 9
            local.set 1680
            local.get 1679
            local.get 1680
            i32.add
            local.set 1681
            local.get 8
            i32.load offset=4
            local.set 1682
            local.get 1681
            local.get 1682
            i32.sub
            local.set 1683
            local.get 8
            i32.load offset=712
            local.set 1684
            local.get 1684
            local.get 1683
            i32.sub
            local.set 1685
            local.get 8
            local.get 1685
            i32.store offset=712
            local.get 8
            i32.load offset=184
            local.set 1686
            i32.const 4
            local.set 1687
            local.get 1686
            local.get 1687
            i32.add
            local.set 1688
            local.get 8
            local.get 1688
            i32.store offset=184
            br 1 (;@3;)
          end
        end
        local.get 8
        i32.load offset=728
        local.set 1689
        local.get 8
        i32.load offset=712
        local.set 1690
        i32.const 18
        local.set 1691
        local.get 1690
        local.get 1691
        i32.add
        local.set 1692
        i32.const 48
        local.set 1693
        i32.const 18
        local.set 1694
        i32.const 0
        local.set 1695
        i32.const 24
        local.set 1696
        local.get 1693
        local.get 1696
        i32.shl
        local.set 1697
        local.get 1697
        local.get 1696
        i32.shr_s
        local.set 1698
        local.get 1689
        local.get 1698
        local.get 1692
        local.get 1694
        local.get 1695
        call $pad
        local.get 8
        i32.load offset=728
        local.set 1699
        local.get 8
        i32.load offset=96
        local.set 1700
        local.get 8
        i32.load offset=100
        local.set 1701
        local.get 8
        i32.load offset=96
        local.set 1702
        local.get 1701
        local.get 1702
        i32.sub
        local.set 1703
        local.get 1699
        local.get 1700
        local.get 1703
        call $out
      end
      local.get 8
      i32.load offset=728
      local.set 1704
      local.get 8
      i32.load offset=716
      local.set 1705
      local.get 8
      i32.load offset=116
      local.set 1706
      local.get 8
      i32.load offset=156
      local.set 1707
      local.get 1706
      local.get 1707
      i32.add
      local.set 1708
      local.get 8
      i32.load offset=708
      local.set 1709
      i32.const 8192
      local.set 1710
      local.get 1709
      local.get 1710
      i32.xor
      local.set 1711
      i32.const 32
      local.set 1712
      i32.const 24
      local.set 1713
      local.get 1712
      local.get 1713
      i32.shl
      local.set 1714
      local.get 1714
      local.get 1713
      i32.shr_s
      local.set 1715
      local.get 1704
      local.get 1715
      local.get 1705
      local.get 1708
      local.get 1711
      call $pad
      local.get 8
      i32.load offset=716
      local.set 1716
      local.get 8
      i32.load offset=116
      local.set 1717
      local.get 8
      i32.load offset=156
      local.set 1718
      local.get 1717
      local.get 1718
      i32.add
      local.set 1719
      local.get 1716
      local.set 1720
      local.get 1719
      local.set 1721
      local.get 1720
      local.get 1721
      i32.gt_s
      local.set 1722
      i32.const 1
      local.set 1723
      local.get 1722
      local.get 1723
      i32.and
      local.set 1724
      block  ;; label = @2
        block  ;; label = @3
          local.get 1724
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.load offset=716
          local.set 1725
          local.get 1725
          local.set 1726
          br 1 (;@2;)
        end
        local.get 8
        i32.load offset=116
        local.set 1727
        local.get 8
        i32.load offset=156
        local.set 1728
        local.get 1727
        local.get 1728
        i32.add
        local.set 1729
        local.get 1729
        local.set 1726
      end
      local.get 1726
      local.set 1730
      local.get 8
      local.get 1730
      i32.store offset=732
    end
    local.get 8
    i32.load offset=732
    local.set 1731
    i32.const 736
    local.set 1732
    local.get 8
    local.get 1732
    i32.add
    local.set 1733
    local.get 1733
    global.set $__stack_pointer
    local.get 1731
    return)
  (func $long_double_not_supported (type 0)
    (local i32 i32)
    i32.const 2966
    local.set 0
    i32.const 3752
    local.set 1
    local.get 0
    local.get 1
    call $fputs
    drop
    call $abort
    unreachable)
  (func $strlen (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    i32.load offset=8
    local.set 4
    local.get 3
    local.get 4
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load offset=8
          local.set 5
          i32.const 3
          local.set 6
          local.get 5
          local.get 6
          i32.and
          local.set 7
          local.get 7
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=8
          local.set 8
          local.get 8
          i32.load8_u
          local.set 9
          i32.const 0
          local.set 10
          i32.const 255
          local.set 11
          local.get 9
          local.get 11
          i32.and
          local.set 12
          i32.const 255
          local.set 13
          local.get 10
          local.get 13
          i32.and
          local.set 14
          local.get 12
          local.get 14
          i32.ne
          local.set 15
          i32.const 1
          local.set 16
          local.get 15
          local.get 16
          i32.and
          local.set 17
          block  ;; label = @4
            local.get 17
            br_if 0 (;@4;)
            local.get 3
            i32.load offset=8
            local.set 18
            local.get 3
            i32.load offset=4
            local.set 19
            local.get 18
            local.get 19
            i32.sub
            local.set 20
            local.get 3
            local.get 20
            i32.store offset=12
            br 3 (;@1;)
          end
          local.get 3
          i32.load offset=8
          local.set 21
          i32.const 1
          local.set 22
          local.get 21
          local.get 22
          i32.add
          local.set 23
          local.get 3
          local.get 23
          i32.store offset=8
          br 0 (;@3;)
        end
      end
      local.get 3
      i32.load offset=8
      local.set 24
      local.get 3
      local.get 24
      i32.store
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load
          local.set 25
          local.get 25
          i32.load
          local.set 26
          i32.const 16843009
          local.set 27
          local.get 26
          local.get 27
          i32.sub
          local.set 28
          local.get 3
          i32.load
          local.set 29
          local.get 29
          i32.load
          local.set 30
          i32.const -1
          local.set 31
          local.get 30
          local.get 31
          i32.xor
          local.set 32
          local.get 28
          local.get 32
          i32.and
          local.set 33
          i32.const -2139062144
          local.set 34
          local.get 33
          local.get 34
          i32.and
          local.set 35
          i32.const 0
          local.set 36
          local.get 35
          local.set 37
          local.get 36
          local.set 38
          local.get 37
          local.get 38
          i32.ne
          local.set 39
          i32.const -1
          local.set 40
          local.get 39
          local.get 40
          i32.xor
          local.set 41
          i32.const 1
          local.set 42
          local.get 41
          local.get 42
          i32.and
          local.set 43
          local.get 43
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.load
          local.set 44
          i32.const 4
          local.set 45
          local.get 44
          local.get 45
          i32.add
          local.set 46
          local.get 3
          local.get 46
          i32.store
          br 0 (;@3;)
        end
      end
      local.get 3
      i32.load
      local.set 47
      local.get 3
      local.get 47
      i32.store offset=8
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load offset=8
          local.set 48
          local.get 48
          i32.load8_u
          local.set 49
          i32.const 0
          local.set 50
          i32.const 255
          local.set 51
          local.get 49
          local.get 51
          i32.and
          local.set 52
          i32.const 255
          local.set 53
          local.get 50
          local.get 53
          i32.and
          local.set 54
          local.get 52
          local.get 54
          i32.ne
          local.set 55
          i32.const 1
          local.set 56
          local.get 55
          local.get 56
          i32.and
          local.set 57
          local.get 57
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=8
          local.set 58
          i32.const 1
          local.set 59
          local.get 58
          local.get 59
          i32.add
          local.set 60
          local.get 3
          local.get 60
          i32.store offset=8
          br 0 (;@3;)
        end
      end
      local.get 3
      i32.load offset=8
      local.set 61
      local.get 3
      i32.load offset=4
      local.set 62
      local.get 61
      local.get 62
      i32.sub
      local.set 63
      local.get 3
      local.get 63
      i32.store offset=12
    end
    local.get 3
    i32.load offset=12
    local.set 64
    local.get 64
    return)
  (func $memchr (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 32
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    local.get 0
    i32.store offset=28
    local.get 5
    local.get 1
    i32.store offset=24
    local.get 5
    local.get 2
    i32.store offset=20
    local.get 5
    i32.load offset=28
    local.set 6
    local.get 5
    local.get 6
    i32.store offset=16
    local.get 5
    i32.load offset=24
    local.set 7
    i32.const 255
    local.set 8
    local.get 7
    local.get 8
    i32.and
    local.set 9
    local.get 5
    local.get 9
    i32.store offset=24
    loop  ;; label = @1
      local.get 5
      i32.load offset=16
      local.set 10
      i32.const 3
      local.set 11
      local.get 10
      local.get 11
      i32.and
      local.set 12
      i32.const 0
      local.set 13
      local.get 13
      local.set 14
      block  ;; label = @2
        local.get 12
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=20
        local.set 15
        i32.const 0
        local.set 16
        local.get 16
        local.set 14
        local.get 15
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=16
        local.set 17
        local.get 17
        i32.load8_u
        local.set 18
        i32.const 255
        local.set 19
        local.get 18
        local.get 19
        i32.and
        local.set 20
        local.get 5
        i32.load offset=24
        local.set 21
        local.get 20
        local.set 22
        local.get 21
        local.set 23
        local.get 22
        local.get 23
        i32.ne
        local.set 24
        local.get 24
        local.set 14
      end
      local.get 14
      local.set 25
      i32.const 1
      local.set 26
      local.get 25
      local.get 26
      i32.and
      local.set 27
      block  ;; label = @2
        local.get 27
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=16
        local.set 28
        i32.const 1
        local.set 29
        local.get 28
        local.get 29
        i32.add
        local.set 30
        local.get 5
        local.get 30
        i32.store offset=16
        local.get 5
        i32.load offset=20
        local.set 31
        i32.const -1
        local.set 32
        local.get 31
        local.get 32
        i32.add
        local.set 33
        local.get 5
        local.get 33
        i32.store offset=20
        br 1 (;@1;)
      end
    end
    local.get 5
    i32.load offset=20
    local.set 34
    block  ;; label = @1
      local.get 34
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=16
      local.set 35
      local.get 35
      i32.load8_u
      local.set 36
      i32.const 255
      local.set 37
      local.get 36
      local.get 37
      i32.and
      local.set 38
      local.get 5
      i32.load offset=24
      local.set 39
      local.get 38
      local.set 40
      local.get 39
      local.set 41
      local.get 40
      local.get 41
      i32.ne
      local.set 42
      i32.const 1
      local.set 43
      local.get 42
      local.get 43
      i32.and
      local.set 44
      local.get 44
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=24
      local.set 45
      i32.const 16843009
      local.set 46
      local.get 45
      local.get 46
      i32.mul
      local.set 47
      local.get 5
      local.get 47
      i32.store offset=8
      local.get 5
      i32.load offset=16
      local.set 48
      local.get 5
      local.get 48
      i32.store offset=12
      loop  ;; label = @2
        local.get 5
        i32.load offset=20
        local.set 49
        i32.const 4
        local.set 50
        local.get 49
        local.set 51
        local.get 50
        local.set 52
        local.get 51
        local.get 52
        i32.ge_u
        local.set 53
        i32.const 0
        local.set 54
        i32.const 1
        local.set 55
        local.get 53
        local.get 55
        i32.and
        local.set 56
        local.get 54
        local.set 57
        block  ;; label = @3
          local.get 56
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          i32.load offset=12
          local.set 58
          local.get 58
          i32.load
          local.set 59
          local.get 5
          i32.load offset=8
          local.set 60
          local.get 59
          local.get 60
          i32.xor
          local.set 61
          i32.const 16843009
          local.set 62
          local.get 61
          local.get 62
          i32.sub
          local.set 63
          local.get 5
          i32.load offset=12
          local.set 64
          local.get 64
          i32.load
          local.set 65
          local.get 5
          i32.load offset=8
          local.set 66
          local.get 65
          local.get 66
          i32.xor
          local.set 67
          i32.const -1
          local.set 68
          local.get 67
          local.get 68
          i32.xor
          local.set 69
          local.get 63
          local.get 69
          i32.and
          local.set 70
          i32.const -2139062144
          local.set 71
          local.get 70
          local.get 71
          i32.and
          local.set 72
          i32.const 0
          local.set 73
          local.get 72
          local.set 74
          local.get 73
          local.set 75
          local.get 74
          local.get 75
          i32.ne
          local.set 76
          i32.const -1
          local.set 77
          local.get 76
          local.get 77
          i32.xor
          local.set 78
          local.get 78
          local.set 57
        end
        local.get 57
        local.set 79
        i32.const 1
        local.set 80
        local.get 79
        local.get 80
        i32.and
        local.set 81
        block  ;; label = @3
          local.get 81
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          i32.load offset=12
          local.set 82
          i32.const 4
          local.set 83
          local.get 82
          local.get 83
          i32.add
          local.set 84
          local.get 5
          local.get 84
          i32.store offset=12
          local.get 5
          i32.load offset=20
          local.set 85
          i32.const 4
          local.set 86
          local.get 85
          local.get 86
          i32.sub
          local.set 87
          local.get 5
          local.get 87
          i32.store offset=20
          br 1 (;@2;)
        end
      end
      local.get 5
      i32.load offset=12
      local.set 88
      local.get 5
      local.get 88
      i32.store offset=16
    end
    loop  ;; label = @1
      local.get 5
      i32.load offset=20
      local.set 89
      i32.const 0
      local.set 90
      local.get 90
      local.set 91
      block  ;; label = @2
        local.get 89
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=16
        local.set 92
        local.get 92
        i32.load8_u
        local.set 93
        i32.const 255
        local.set 94
        local.get 93
        local.get 94
        i32.and
        local.set 95
        local.get 5
        i32.load offset=24
        local.set 96
        local.get 95
        local.set 97
        local.get 96
        local.set 98
        local.get 97
        local.get 98
        i32.ne
        local.set 99
        local.get 99
        local.set 91
      end
      local.get 91
      local.set 100
      i32.const 1
      local.set 101
      local.get 100
      local.get 101
      i32.and
      local.set 102
      block  ;; label = @2
        local.get 102
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=16
        local.set 103
        i32.const 1
        local.set 104
        local.get 103
        local.get 104
        i32.add
        local.set 105
        local.get 5
        local.get 105
        i32.store offset=16
        local.get 5
        i32.load offset=20
        local.set 106
        i32.const -1
        local.set 107
        local.get 106
        local.get 107
        i32.add
        local.set 108
        local.get 5
        local.get 108
        i32.store offset=20
        br 1 (;@1;)
      end
    end
    local.get 5
    i32.load offset=20
    local.set 109
    block  ;; label = @1
      block  ;; label = @2
        local.get 109
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=16
        local.set 110
        local.get 110
        local.set 111
        br 1 (;@1;)
      end
      i32.const 0
      local.set 112
      local.get 112
      local.set 111
    end
    local.get 111
    local.set 113
    local.get 113
    return)
  (func $strnlen (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    i32.load offset=12
    local.set 5
    local.get 4
    i32.load offset=8
    local.set 6
    i32.const 0
    local.set 7
    local.get 5
    local.get 7
    local.get 6
    call $memchr
    local.set 8
    local.get 4
    local.get 8
    i32.store offset=4
    local.get 4
    i32.load offset=4
    local.set 9
    i32.const 0
    local.set 10
    local.get 9
    local.set 11
    local.get 10
    local.set 12
    local.get 11
    local.get 12
    i32.ne
    local.set 13
    i32.const 1
    local.set 14
    local.get 13
    local.get 14
    i32.and
    local.set 15
    block  ;; label = @1
      block  ;; label = @2
        local.get 15
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.load offset=4
        local.set 16
        local.get 4
        i32.load offset=12
        local.set 17
        local.get 16
        local.get 17
        i32.sub
        local.set 18
        local.get 18
        local.set 19
        br 1 (;@1;)
      end
      local.get 4
      i32.load offset=8
      local.set 20
      local.get 20
      local.set 19
    end
    local.get 19
    local.set 21
    i32.const 16
    local.set 22
    local.get 4
    local.get 22
    i32.add
    local.set 23
    local.get 23
    global.set $__stack_pointer
    local.get 21
    return)
  (func $__lock (type 8) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 32
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=28
    i32.const 0
    local.set 4
    local.get 4
    i32.load8_u offset=3897
    local.set 5
    i32.const 24
    local.set 6
    local.get 5
    local.get 6
    i32.shl
    local.set 7
    local.get 7
    local.get 6
    i32.shr_s
    local.set 8
    local.get 3
    local.get 8
    i32.store offset=24
    local.get 3
    i32.load offset=24
    local.set 9
    block  ;; label = @1
      block  ;; label = @2
        local.get 9
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=28
      local.set 10
      i32.const -2147483647
      local.set 11
      i32.const 0
      local.set 12
      local.get 10
      local.get 12
      local.get 11
      i32.atomic.rmw.cmpxchg
      local.set 13
      local.get 13
      i32.eqz
      drop
      local.get 3
      local.get 13
      i32.store offset=20
      local.get 3
      i32.load offset=24
      local.set 14
      i32.const 0
      local.set 15
      local.get 14
      local.set 16
      local.get 15
      local.set 17
      local.get 16
      local.get 17
      i32.lt_s
      local.set 18
      i32.const 1
      local.set 19
      local.get 18
      local.get 19
      i32.and
      local.set 20
      block  ;; label = @2
        local.get 20
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 21
        i32.const 0
        local.set 22
        local.get 22
        local.get 21
        i32.store8 offset=3897
      end
      local.get 3
      i32.load offset=20
      local.set 23
      block  ;; label = @2
        local.get 23
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 0
      local.set 24
      local.get 3
      local.get 24
      i32.store offset=16
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load offset=16
          local.set 25
          i32.const 10
          local.set 26
          local.get 25
          local.set 27
          local.get 26
          local.set 28
          local.get 27
          local.get 28
          i32.lt_u
          local.set 29
          i32.const 1
          local.set 30
          local.get 29
          local.get 30
          i32.and
          local.set 31
          local.get 31
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=20
          local.set 32
          i32.const 0
          local.set 33
          local.get 32
          local.set 34
          local.get 33
          local.set 35
          local.get 34
          local.get 35
          i32.lt_s
          local.set 36
          i32.const 1
          local.set 37
          local.get 36
          local.get 37
          i32.and
          local.set 38
          block  ;; label = @4
            local.get 38
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.load offset=20
            local.set 39
            i32.const -2147483647
            local.set 40
            local.get 39
            local.get 40
            i32.sub
            local.set 41
            local.get 3
            local.get 41
            i32.store offset=20
          end
          local.get 3
          i32.load offset=28
          local.set 42
          local.get 3
          i32.load offset=20
          local.set 43
          i32.const -2147483647
          local.set 44
          local.get 43
          local.get 44
          i32.add
          local.set 45
          local.get 42
          local.get 43
          local.get 45
          i32.atomic.rmw.cmpxchg
          local.set 46
          local.get 46
          local.get 43
          i32.eq
          drop
          local.get 3
          local.get 46
          i32.store offset=12
          local.get 3
          i32.load offset=12
          local.set 47
          local.get 3
          i32.load offset=20
          local.set 48
          local.get 47
          local.set 49
          local.get 48
          local.set 50
          local.get 49
          local.get 50
          i32.eq
          local.set 51
          i32.const 1
          local.set 52
          local.get 51
          local.get 52
          i32.and
          local.set 53
          block  ;; label = @4
            local.get 53
            i32.eqz
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
          local.get 3
          i32.load offset=12
          local.set 54
          local.get 3
          local.get 54
          i32.store offset=20
          local.get 3
          i32.load offset=16
          local.set 55
          i32.const 1
          local.set 56
          local.get 55
          local.get 56
          i32.add
          local.set 57
          local.get 3
          local.get 57
          i32.store offset=16
          br 0 (;@3;)
        end
      end
      local.get 3
      i32.load offset=28
      local.set 58
      i32.const 1
      local.set 59
      local.get 58
      local.get 59
      call $a_fetch_add
      local.set 60
      i32.const 1
      local.set 61
      local.get 60
      local.get 61
      i32.add
      local.set 62
      local.get 3
      local.get 62
      i32.store offset=20
      loop  ;; label = @2
        local.get 3
        i32.load offset=20
        local.set 63
        i32.const 0
        local.set 64
        local.get 63
        local.set 65
        local.get 64
        local.set 66
        local.get 65
        local.get 66
        i32.lt_s
        local.set 67
        i32.const 1
        local.set 68
        local.get 67
        local.get 68
        i32.and
        local.set 69
        block  ;; label = @3
          local.get 69
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=28
          local.set 70
          local.get 3
          i32.load offset=20
          local.set 71
          i32.const 1
          local.set 72
          local.get 70
          local.get 71
          local.get 72
          call $__futexwait.1
          local.get 3
          i32.load offset=20
          local.set 73
          i32.const -2147483647
          local.set 74
          local.get 73
          local.get 74
          i32.sub
          local.set 75
          local.get 3
          local.get 75
          i32.store offset=20
        end
        local.get 3
        i32.load offset=28
        local.set 76
        local.get 3
        i32.load offset=20
        local.set 77
        i32.const -2147483648
        local.set 78
        local.get 77
        local.get 78
        i32.add
        local.set 79
        local.get 76
        local.get 77
        local.get 79
        i32.atomic.rmw.cmpxchg
        local.set 80
        local.get 80
        local.get 77
        i32.eq
        drop
        local.get 3
        local.get 80
        i32.store offset=8
        local.get 3
        i32.load offset=8
        local.set 81
        local.get 3
        i32.load offset=20
        local.set 82
        local.get 81
        local.set 83
        local.get 82
        local.set 84
        local.get 83
        local.get 84
        i32.eq
        local.set 85
        i32.const 1
        local.set 86
        local.get 85
        local.get 86
        i32.and
        local.set 87
        block  ;; label = @3
          local.get 87
          i32.eqz
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
        local.get 3
        i32.load offset=8
        local.set 88
        local.get 3
        local.get 88
        i32.store offset=20
        br 0 (;@2;)
      end
    end
    i32.const 32
    local.set 89
    local.get 3
    local.get 89
    i32.add
    local.set 90
    local.get 90
    global.set $__stack_pointer
    return)
  (func $a_fetch_add (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    loop  ;; label = @1
      local.get 4
      i32.load offset=12
      local.set 5
      local.get 5
      i32.load
      local.set 6
      local.get 4
      local.get 6
      i32.store offset=4
      local.get 4
      i32.load offset=12
      local.set 7
      local.get 4
      i32.load offset=4
      local.set 8
      local.get 4
      i32.load offset=8
      local.set 9
      local.get 8
      local.get 9
      i32.add
      local.set 10
      local.get 7
      local.get 8
      local.get 10
      i32.atomic.rmw.cmpxchg
      local.set 11
      local.get 11
      local.get 8
      i32.eq
      drop
      local.get 4
      i32.load offset=4
      local.set 12
      local.get 11
      local.set 13
      local.get 12
      local.set 14
      local.get 13
      local.get 14
      i32.ne
      local.set 15
      i32.const 1
      local.set 16
      local.get 15
      local.get 16
      i32.and
      local.set 17
      local.get 17
      br_if 0 (;@1;)
    end
    local.get 4
    i32.load offset=4
    local.set 18
    local.get 18
    return)
  (func $__futexwait.1 (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    local.get 5
    local.get 2
    i32.store offset=4
    local.get 5
    i32.load offset=12
    local.set 6
    local.get 5
    i32.load offset=8
    local.set 7
    local.get 5
    i32.load offset=4
    local.set 8
    i32.const 0
    local.set 9
    local.get 6
    local.get 9
    local.get 7
    local.get 8
    call $__wait
    i32.const 16
    local.set 10
    local.get 5
    local.get 10
    i32.add
    local.set 11
    local.get 11
    global.set $__stack_pointer
    return)
  (func $fprintf (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    local.get 5
    local.get 2
    i32.store
    local.get 5
    i32.load offset=12
    local.set 6
    local.get 5
    i32.load offset=8
    local.set 7
    local.get 5
    i32.load
    local.set 8
    local.get 6
    local.get 7
    local.get 8
    call $vfprintf
    local.set 9
    local.get 5
    local.get 9
    i32.store offset=4
    local.get 5
    i32.load offset=4
    local.set 10
    i32.const 16
    local.set 11
    local.get 5
    local.get 11
    i32.add
    local.set 12
    local.get 12
    global.set $__stack_pointer
    local.get 10
    return)
  (func $__assert_fail (type 16) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 32
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 6
    local.get 0
    i32.store offset=28
    local.get 6
    local.get 1
    i32.store offset=24
    local.get 6
    local.get 2
    i32.store offset=20
    local.get 6
    local.get 3
    i32.store offset=16
    local.get 6
    i32.load offset=28
    local.set 7
    local.get 6
    i32.load offset=24
    local.set 8
    local.get 6
    i32.load offset=16
    local.set 9
    local.get 6
    i32.load offset=20
    local.set 10
    local.get 6
    local.get 10
    i32.store offset=12
    local.get 6
    local.get 9
    i32.store offset=8
    local.get 6
    local.get 8
    i32.store offset=4
    local.get 6
    local.get 7
    i32.store
    i32.const 3097
    local.set 11
    i32.const 3752
    local.set 12
    local.get 12
    local.get 11
    local.get 6
    call $fprintf
    drop
    call $abort
    unreachable)
  (func $__wasilibc_futex_wait (type 17) (param i32 i32 i32 i64) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 32
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 6
    local.get 0
    i32.store offset=24
    local.get 6
    local.get 1
    i32.store offset=20
    local.get 6
    local.get 2
    i32.store offset=16
    local.get 6
    local.get 3
    i64.store offset=8
    local.get 6
    i32.load offset=24
    local.set 7
    i32.const 3
    local.set 8
    local.get 7
    local.get 8
    i32.and
    local.set 9
    block  ;; label = @1
      block  ;; label = @2
        local.get 9
        i32.eqz
        br_if 0 (;@2;)
        i32.const -28
        local.set 10
        local.get 6
        local.get 10
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 6
      i32.load offset=24
      local.set 11
      local.get 6
      i32.load offset=16
      local.set 12
      local.get 6
      i64.load offset=8
      local.set 13
      local.get 11
      local.get 12
      local.get 13
      memory.atomic.wait32
      local.set 14
      local.get 6
      local.get 14
      i32.store offset=4
      local.get 6
      i32.load offset=4
      local.set 15
      i32.const 1
      local.set 16
      local.get 15
      local.set 17
      local.get 16
      local.set 18
      local.get 17
      local.get 18
      i32.eq
      local.set 19
      i32.const 1
      local.set 20
      local.get 19
      local.get 20
      i32.and
      local.set 21
      block  ;; label = @2
        local.get 21
        i32.eqz
        br_if 0 (;@2;)
        i32.const -6
        local.set 22
        local.get 6
        local.get 22
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 6
      i32.load offset=4
      local.set 23
      i32.const 2
      local.set 24
      local.get 23
      local.set 25
      local.get 24
      local.set 26
      local.get 25
      local.get 26
      i32.eq
      local.set 27
      i32.const 1
      local.set 28
      local.get 27
      local.get 28
      i32.and
      local.set 29
      block  ;; label = @2
        local.get 29
        i32.eqz
        br_if 0 (;@2;)
        i32.const -73
        local.set 30
        local.get 6
        local.get 30
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 6
      i32.load offset=4
      local.set 31
      block  ;; label = @2
        local.get 31
        i32.eqz
        br_if 0 (;@2;)
        i32.const 2948
        local.set 32
        i32.const 2901
        local.set 33
        i32.const 32
        local.set 34
        i32.const 2871
        local.set 35
        local.get 32
        local.get 33
        local.get 34
        local.get 35
        call $__assert_fail
        unreachable
      end
      i32.const 0
      local.set 36
      local.get 6
      local.get 36
      i32.store offset=28
    end
    local.get 6
    i32.load offset=28
    local.set 37
    i32.const 32
    local.set 38
    local.get 6
    local.get 38
    i32.add
    local.set 39
    local.get 39
    global.set $__stack_pointer
    local.get 37
    return)
  (func $__wait (type 16) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 32
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 6
    local.get 0
    i32.store offset=28
    local.get 6
    local.get 1
    i32.store offset=24
    local.get 6
    local.get 2
    i32.store offset=20
    local.get 6
    local.get 3
    i32.store offset=16
    i32.const 100
    local.set 7
    local.get 6
    local.get 7
    i32.store offset=12
    local.get 6
    i32.load offset=16
    local.set 8
    block  ;; label = @1
      local.get 8
      i32.eqz
      br_if 0 (;@1;)
      i32.const 128
      local.set 9
      local.get 6
      local.get 9
      i32.store offset=16
    end
    block  ;; label = @1
      loop  ;; label = @2
        local.get 6
        i32.load offset=12
        local.set 10
        i32.const -1
        local.set 11
        local.get 10
        local.get 11
        i32.add
        local.set 12
        local.get 6
        local.get 12
        i32.store offset=12
        i32.const 0
        local.set 13
        local.get 13
        local.set 14
        block  ;; label = @3
          local.get 10
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          i32.load offset=24
          local.set 15
          i32.const 0
          local.set 16
          local.get 15
          local.set 17
          local.get 16
          local.set 18
          local.get 17
          local.get 18
          i32.ne
          local.set 19
          i32.const 1
          local.set 20
          i32.const 1
          local.set 21
          local.get 19
          local.get 21
          i32.and
          local.set 22
          local.get 20
          local.set 23
          block  ;; label = @4
            local.get 22
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            i32.load offset=24
            local.set 24
            local.get 24
            i32.load
            local.set 25
            i32.const 0
            local.set 26
            local.get 25
            local.set 27
            local.get 26
            local.set 28
            local.get 27
            local.get 28
            i32.ne
            local.set 29
            i32.const -1
            local.set 30
            local.get 29
            local.get 30
            i32.xor
            local.set 31
            local.get 31
            local.set 23
          end
          local.get 23
          local.set 32
          local.get 32
          local.set 14
        end
        local.get 14
        local.set 33
        i32.const 1
        local.set 34
        local.get 33
        local.get 34
        i32.and
        local.set 35
        block  ;; label = @3
          local.get 35
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          i32.load offset=28
          local.set 36
          local.get 36
          i32.load
          local.set 37
          local.get 6
          i32.load offset=20
          local.set 38
          local.get 37
          local.set 39
          local.get 38
          local.set 40
          local.get 39
          local.get 40
          i32.eq
          local.set 41
          i32.const 1
          local.set 42
          local.get 41
          local.get 42
          i32.and
          local.set 43
          block  ;; label = @4
            block  ;; label = @5
              local.get 43
              i32.eqz
              br_if 0 (;@5;)
              call $a_barrier
              br 1 (;@4;)
            end
            br 3 (;@1;)
          end
          br 1 (;@2;)
        end
      end
      local.get 6
      i32.load offset=24
      local.set 44
      i32.const 0
      local.set 45
      local.get 44
      local.set 46
      local.get 45
      local.set 47
      local.get 46
      local.get 47
      i32.ne
      local.set 48
      i32.const 1
      local.set 49
      local.get 48
      local.get 49
      i32.and
      local.set 50
      block  ;; label = @2
        local.get 50
        i32.eqz
        br_if 0 (;@2;)
        local.get 6
        i32.load offset=24
        local.set 51
        local.get 51
        call $a_inc
      end
      block  ;; label = @2
        loop  ;; label = @3
          local.get 6
          i32.load offset=28
          local.set 52
          local.get 52
          i32.load
          local.set 53
          local.get 6
          i32.load offset=20
          local.set 54
          local.get 53
          local.set 55
          local.get 54
          local.set 56
          local.get 55
          local.get 56
          i32.eq
          local.set 57
          i32.const 1
          local.set 58
          local.get 57
          local.get 58
          i32.and
          local.set 59
          local.get 59
          i32.eqz
          br_if 1 (;@2;)
          local.get 6
          i32.load offset=28
          local.set 60
          local.get 6
          i32.load offset=20
          local.set 61
          i32.const 0
          local.set 62
          i64.const -1
          local.set 63
          local.get 60
          local.get 62
          local.get 61
          local.get 63
          call $__wasilibc_futex_wait
          drop
          br 0 (;@3;)
        end
      end
      local.get 6
      i32.load offset=24
      local.set 64
      i32.const 0
      local.set 65
      local.get 64
      local.set 66
      local.get 65
      local.set 67
      local.get 66
      local.get 67
      i32.ne
      local.set 68
      i32.const 1
      local.set 69
      local.get 68
      local.get 69
      i32.and
      local.set 70
      local.get 70
      i32.eqz
      br_if 0 (;@1;)
      local.get 6
      i32.load offset=24
      local.set 71
      local.get 71
      call $a_dec
    end
    i32.const 32
    local.set 72
    local.get 6
    local.get 72
    i32.add
    local.set 73
    local.get 73
    global.set $__stack_pointer
    return)
  (func $a_barrier (type 0)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 0
    i32.const 16
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    i32.const 0
    local.set 3
    local.get 2
    local.get 3
    i32.store offset=12
    local.get 2
    local.get 3
    local.get 3
    i32.atomic.rmw.cmpxchg offset=12
    drop
    return)
  (func $a_inc (type 8) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    i32.const 1
    local.set 5
    local.get 4
    local.get 5
    call $a_fetch_add.1
    drop
    i32.const 16
    local.set 6
    local.get 3
    local.get 6
    i32.add
    local.set 7
    local.get 7
    global.set $__stack_pointer
    return)
  (func $a_dec (type 8) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    i32.const -1
    local.set 5
    local.get 4
    local.get 5
    call $a_fetch_add.1
    drop
    i32.const 16
    local.set 6
    local.get 3
    local.get 6
    i32.add
    local.set 7
    local.get 7
    global.set $__stack_pointer
    return)
  (func $a_fetch_add.1 (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    loop  ;; label = @1
      local.get 4
      i32.load offset=12
      local.set 5
      local.get 5
      i32.load
      local.set 6
      local.get 4
      local.get 6
      i32.store offset=4
      local.get 4
      i32.load offset=12
      local.set 7
      local.get 4
      i32.load offset=4
      local.set 8
      local.get 4
      i32.load offset=8
      local.set 9
      local.get 8
      local.get 9
      i32.add
      local.set 10
      local.get 7
      local.get 8
      local.get 10
      i32.atomic.rmw.cmpxchg
      local.set 11
      local.get 11
      local.get 8
      i32.eq
      drop
      local.get 4
      i32.load offset=4
      local.set 12
      local.get 11
      local.set 13
      local.get 12
      local.set 14
      local.get 13
      local.get 14
      i32.ne
      local.set 15
      i32.const 1
      local.set 16
      local.get 15
      local.get 16
      i32.and
      local.set 17
      local.get 17
      br_if 0 (;@1;)
    end
    local.get 4
    i32.load offset=4
    local.set 18
    local.get 18
    return)
  (table (;0;) 9 9 funcref)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 70528))
  (global $__tls_base i32 (i32.const 1024))
  (export "memory" (memory 0))
  (export "_start" (func $_start))
  (export "main" (func $main))
  (elem (;0;) (i32.const 1) func $dummy $__stdio_exit $dummy.1 $__stdio_write $__stdio_close $__stdout_write $__stdio_seek $dummy.2)
  (data $.tdata (i32.const 1024) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
  (data $.rodata (i32.const 1136) "Success\00Illegal byte sequence\00Domain error\00Result not representable\00Not a tty\00Permission denied\00Operation not permitted\00No such file or directory\00No such process\00File exists\00Value too large for data type\00No space left on device\00Out of memory\00Resource busy\00Interrupted system call\00Resource temporarily unavailable\00Invalid seek\00Cross-device link\00Read-only file system\00Directory not empty\00Connection reset by peer\00Operation timed out\00Connection refused\00Host is unreachable\00Address in use\00Broken pipe\00I/O error\00No such device or address\00No such device\00Not a directory\00Is a directory\00Text file busy\00Exec format error\00Invalid argument\00Argument list too long\00Symbolic link loop\00Filename too long\00Too many open files in system\00No file descriptors available\00Bad file descriptor\00No child process\00Bad address\00File too large\00Too many links\00No locks available\00Resource deadlock would occur\00State not recoverable\00Previous owner died\00Operation canceled\00Function not implemented\00No message of desired type\00Identifier removed\00Link has been severed\00Protocol error\00Bad message\00Not a socket\00Destination address required\00Message too large\00Protocol wrong type for socket\00Protocol not available\00Protocol not supported\00Not supported\00Address family not supported by protocol\00Address not available\00Network is down\00Network unreachable\00Connection reset by network\00Connection aborted\00No buffer space available\00Socket is connected\00Socket not connected\00Operation already in progress\00Operation in progress\00Stale file handle\00Quota exceeded\00Multihop attempted\00Capabilities insufficient\00\00\00u\02N\00\d6\01\e2\04\b9\04\18\01\8e\05\ed\02\16\04\f2\00\97\03\01\038\05\af\01\82\01O\03/\04\1e\00\d4\05\a2\00\12\03\1e\03\c2\01\de\03\08\00\ac\05\00\01d\02\f1\01e\054\02\8c\02\cf\02-\03L\04\e3\05\9f\02\f8\04\1c\05\08\05\b1\02K\05\15\02x\00R\02<\03\f1\03\e4\00\c3\03}\04\cc\00\aa\03y\05$\02n\01m\03\22\04\ab\04D\00\fb\01\ae\00\83\03`\00\e5\01\07\04\94\04^\04+\00X\019\01\92\00\c2\05\9b\01C\02F\01\f6\05-+   0X0x\00-0X+0X 0X-0x+0x 0x\00__wasilibc_futex_wait\00nan\00inf\00libc-top-half/musl/src/thread/__wait.c\00NAN\00INF\00ret == 0\00.\00(null)\00Support for formatting long double values is currently disabled.\0aTo enable it, add -lc-printscan-long-double to the link command.\0a\00Assertion failed: %s (%s: %s: %d)\0a\00\00\00\00\00\19\00\0a\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\11\0a\19\19\19\03\0a\07\00\01\1b\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\19\00\0a\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123456789ABCDEF")
  (data $.data (i32.const 3616) "\05\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\07\00\00\00h\0f\00\00\00\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \0e\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\07\00\00\00|\13\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\a8\0e\00\00\00\00\02\00"))